/*
 * Copyright (c) 2026 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 */

/********************** inclusions *******************************************/
/* Project includes */
#include "main.h"

/* Demo includes */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes */
#include "board.h"
#include "app.h"

#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_display_attribute.h"
#include "task_display_interface.h"
#include "task_system_attribute.h"
#include "task_system_interface.h"

/********************** macros and definitions *******************************/
#define DEL_SYS_MIN			0ul
#define DEL_SYS_MED			250ul
#define DEL_SYS_MAX			500ul

/* Modes to excite Task System */
typedef enum task_system_mode {NORMAL, SETUP, MODE_QTY} task_system_mode_t;

#define SYSTEM_DTA_QTY	MODE_QTY

/********************** internal data declaration ****************************/
task_system_dta_t task_system_dta_list[SYSTEM_DTA_QTY];

/********************** internal functions declaration ***********************/
void task_system_normal_statechart(void);
void task_system_setup_statechart(void);

void task_system_set_mode(task_system_mode_t);

/********************** internal data definition *****************************/
const char *p_task_system 		= "Task System (System Statechart)";
const char *p_task_system_ 		= "Non-Blocking Code";
const char *p_task_system__ 	= "(Update by Time Code, period = 1mS)";

/********************** external data declaration ****************************/
task_system_mode_t g_task_system_mode;

/********************** external functions definition ************************/
void task_system_init(void *parameters)
{
	uint32_t index;
	task_system_dta_t 	*p_task_system_dta;
	task_system_st_t	state;
	task_system_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_INFO(" ");
	LOGGER_INFO("  %s is running - Tick [mS] = %lu", GET_NAME(task_system_init), HAL_GetTick());
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system);
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system_);
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system__);

	init_event_task_system();

	task_system_set_mode(NORMAL);

	for (index = 0; SYSTEM_DTA_QTY > index; index++)
	{
		/* Update Task System Data Pointer */
		p_task_system_dta = &task_system_dta_list[index];

		/* Init & Print out: Task execution FSM */
		state = ST_MAIN;
		p_task_system_dta->state = state;

		event = EV_SYS_IDLE;
		p_task_system_dta->event = event;

		b_event = false;
		p_task_system_dta->flag = b_event;

		/* Inicialización de las variables de los motores */
		p_task_system_dta->id_motor = 1;
		p_task_system_dta->m1_power = true;
		p_task_system_dta->m2_power = true;
		p_task_system_dta->m1_speed = 8;
		p_task_system_dta->m2_speed = 8;
		p_task_system_dta->m1_spin = 'L';
		p_task_system_dta->m2_spin = 'L';

		LOGGER_INFO(" ");
		LOGGER_INFO("   %s = %lu   %s = %lu   %s = %s",
					GET_NAME(state), (uint32_t)state,
					GET_NAME(event), (uint32_t)event,
					GET_NAME(b_event), (b_event ? "true" : "false"));
	}

	put_event_task_display(0, 0, " MAIN MENU      ");
	put_event_task_display(0, 1, " ENTER          ");

	task_system_set_mode(NORMAL);
}

void task_system_update(void *parameters)
{
	/* Run Task Statechart */
	switch (g_task_system_mode)
	{
		case NORMAL:

			task_system_normal_statechart();

			break;

		case SETUP:

			task_system_setup_statechart();

			break;

		default:

			task_system_set_mode(NORMAL);

			break;
		}
}

void task_system_normal_statechart(void)
{
	task_system_dta_t *p_task_system_dta;

	/* Update Task System Data Pointer */
	p_task_system_dta = &task_system_dta_list[NORMAL];

	if (true == any_event_task_system())
	{
		p_task_system_dta->flag = true;
		p_task_system_dta->event = get_event_task_system();
	}

	//put_event_task_display(0, 0, "task_system_mode");
	//put_event_task_display(0, 1, " SETUP          ");

	if (p_task_system_dta->flag)
	    {
	        switch (p_task_system_dta->state)
	        {
	            case ST_MAIN:
	                if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->state = ST_MOTOR_1;
	                    put_event_task_display(0, 0, " MOTOR 1        ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                break;

	            case ST_MOTOR_1:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_MOTOR_2;
	                    put_event_task_display(0, 0, " MOTOR 2        ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ESCAPE) {
	                    p_task_system_dta->state = ST_MAIN;
	                    put_event_task_display(0, 0, " MAIN MENU      ");
	                    put_event_task_display(0, 1, " ENTER          ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->id_motor = 1;
	                    p_task_system_dta->state = ST_POWER;
	                    put_event_task_display(0, 0, " POWER          ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                break;

	            case ST_MOTOR_2:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_MOTOR_1;
	                    put_event_task_display(0, 0, " MOTOR 1        ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->id_motor = 2;
	                    p_task_system_dta->state = ST_POWER;
	                    put_event_task_display(0, 0, " POWER          ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                break;

	            case ST_POWER:
	                if (p_task_system_dta->event == EV_SYS_ESCAPE) {
						p_task_system_dta->state = ST_MOTOR_1;
						put_event_task_display(0, 0, " MOTOR 1        ");
						put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_SPEED;
	                    put_event_task_display(0, 0, " SPEED          ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->state = ST_ON;
	                    put_event_task_display(0, 0, " POWER ON       ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                break;

	            case ST_ON:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_OFF;
	                    put_event_task_display(0, 0, " POWER OFF      ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ESCAPE) {
	                    p_task_system_dta->state = ST_POWER;
	                    put_event_task_display(0, 0, " POWER          ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    if (p_task_system_dta->id_motor == 1) p_task_system_dta->m1_power = true;
	                    if (p_task_system_dta->id_motor == 2) p_task_system_dta->m2_power = true;
	                }
	                break;

	            case ST_OFF:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_ON;
	                    put_event_task_display(0, 0, " POWER ON       ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    if (p_task_system_dta->id_motor == 1) p_task_system_dta->m1_power = false;
	                    if (p_task_system_dta->id_motor == 2) p_task_system_dta->m2_power = false;
	                }
	                break;

	            case ST_SPEED:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_SPIN;
	                    put_event_task_display(0, 0, " SPIN           ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->state = ST_CHANGE_SPEED;
	                    put_event_task_display(0, 0, " CHANGE SPEED   ");
	                    put_event_task_display(0, 1, " ESC       NEXT ");
	                }
	                break;

	            case ST_CHANGE_SPEED:
	                if (p_task_system_dta->event == EV_SYS_ESCAPE) {
	                    p_task_system_dta->state = ST_SPEED;
	                    put_event_task_display(0, 0, " SPEED          ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    if (p_task_system_dta->id_motor == 1) {
	                        if (p_task_system_dta->m1_speed < 9) p_task_system_dta->m1_speed++;
	                        else p_task_system_dta->m1_speed = 0;
	                    } else if (p_task_system_dta->id_motor == 2) {
	                        if (p_task_system_dta->m2_speed < 9) p_task_system_dta->m2_speed++;
	                        else p_task_system_dta->m2_speed = 0;
	                    }

	                }
	                break;

	            case ST_SPIN:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_POWER;
	                    put_event_task_display(0, 0, " POWER          ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    p_task_system_dta->state = ST_LEFT;
	                    put_event_task_display(0, 0, " SPIN LEFT      ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                break;

	            case ST_LEFT:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_RIGHT;
	                    put_event_task_display(0, 0, " SPIN RIGHT     ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ESCAPE) {
	                    p_task_system_dta->state = ST_SPIN;
	                    put_event_task_display(0, 0, " SPIN           ");
	                    put_event_task_display(0, 1, " ENTER     NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    if (p_task_system_dta->id_motor == 1) p_task_system_dta->m1_spin = 'L';
	                    if (p_task_system_dta->id_motor == 2) p_task_system_dta->m2_spin = 'L';
	                }
	                break;

	            case ST_RIGHT:
	                if (p_task_system_dta->event == EV_SYS_NEXT) {
	                    p_task_system_dta->state = ST_LEFT;
	                    put_event_task_display(0, 0, " SPIN LEFT      ");
	                    put_event_task_display(0, 1, " ENTER ESC NEXT ");
	                }
	                else if (p_task_system_dta->event == EV_SYS_ENTER) {
	                    if (p_task_system_dta->id_motor == 1) p_task_system_dta->m1_spin = 'R';
	                    if (p_task_system_dta->id_motor == 2) p_task_system_dta->m2_spin = 'R';
	                }
	                break;

	            default:
	                p_task_system_dta->state = ST_MAIN;
	                put_event_task_display(0, 0, " MAIN MENU      ");
	                put_event_task_display(0, 1, " ENTER          ");
	                break;
	        }
	        p_task_system_dta->flag = false;
	    }
}

void task_system_setup_statechart(void)
{
	task_system_dta_t *p_task_system_dta;

	/* Update Task System Data Pointer */
	p_task_system_dta = &task_system_dta_list[SETUP];

	if (true == any_event_task_system())
	{
		p_task_system_dta->flag = true;
		p_task_system_dta->event = get_event_task_system();
	}

	if (p_task_system_dta->flag)
	{
		switch (p_task_system_dta->state)
		{
			case ST_MAIN:

				if (EV_SYS_BTN_A == p_task_system_dta->event)
				{
					put_event_task_actuator(EV_LED_ACTIVE, ID_LED_A);

					put_event_task_display(0, 0, " MAIN MENU      ");
					put_event_task_display(0, 1, " ENTER          ");

					task_system_set_mode(NORMAL);
				}
				break;

			default:
				p_task_system_dta->tick  = DEL_SYS_MIN;
				p_task_system_dta->state = ST_MAIN;
				break;
		}

		p_task_system_dta->flag = false;
	}
}

void task_system_set_mode(task_system_mode_t task_system_mode)
{
	g_task_system_mode = task_system_mode;
}

/********************** end of file ******************************************/
