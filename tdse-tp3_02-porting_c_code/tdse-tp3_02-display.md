Capturas de la ejecución

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	2
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	1
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	11
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	10
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	1020
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	35
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	1019
  LET			uint32_t	9990
  BCET			uint32_t	2
  WCET			uint32_t	9996

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	4326
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	35
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	4329
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	9996

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	28034
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	36
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	28033
  LET			uint32_t	7991
  BCET			uint32_t	2
  WCET			uint32_t	9996

-------------------------------------------------
task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	52054
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	36
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	52053
  LET			uint32_t	9996
  BCET			uint32_t	2
  WCET			uint32_t	9996

Calculo del factor de uso de CPU

U = sumatoria(WCET / Tsystick)

Tsystick = 1000 us = 1 ms

U = 36/1000 + 9996/1000 = 10.32

Como U >= 1 sistema está sobrecargado y no cumple con las 
restricciones temporales del ejecutor cíclico.
  