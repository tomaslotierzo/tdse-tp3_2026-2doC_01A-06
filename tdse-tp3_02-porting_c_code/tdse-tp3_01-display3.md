Capturas de la ejecución

---------------------------------------------

task_dta_list[0]
NOE  (uint32_t): 7708
LET  (uint32_t): 2
BCET (uint32_t): 2
WCET (uint32_t): 35

task_dta_list[1]
NOE  (uint32_t): 7712
LET  (uint32_t): 2
BCET (uint32_t): 2
WCET (uint32_t): 275996

---------------------------------------------

task_dta_list[0]
NOE  (uint32_t): 31032
LET  (uint32_t): 2
BCET (uint32_t): 2
WCET (uint32_t): 36

task_dta_list[1]
NOE  (uint32_t): 31031
LET  (uint32_t): 2
BCET (uint32_t): 2
WCET (uint32_t): 275996

Calculo del factor de uso de CPU

U = sumatoria(WCET / Tsystick)

Tsystick = 1000 us = 1 ms

U = 36/1000 + 275996/1000 = 276.032

Como U >= 1 sistema está sobrecargado y no cumple con las 
restricciones temporales del ejecutor cíclico.

Tarea 1 está tardando aproximadamente 276 milisegundos en ejecutarse,
excediendo la ventana de 1 milisegundo permitida por el Systick.
Se debe a las funciones de retardo bloqueantes del codigo ("delay()").