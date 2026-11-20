-------------------------------------------------

task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	8774
  LET			uint32_t	43
  BCET			uint32_t	43
  WCET			uint32_t	43
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	8780
  LET			uint32_t	3
  BCET			uint32_t	3
  WCET			uint32_t	3
task_dta_list[2]	task_dta_t	{...}
  NOE			uint32_t	8783
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2
task_dta_list[3]	task_dta_t	{...}
  NOE			uint32_t	8788
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2

-------------------------------------------------

task_dta_list[0]	task_dta_t	{...}
  NOE			uint32_t	43715
  LET			uint32_t	43
  BCET			uint32_t	43
  WCET			uint32_t	43
task_dta_list[1]	task_dta_t	{...}
  NOE			uint32_t	43719
  LET			uint32_t	3
  BCET			uint32_t	3
  WCET			uint32_t	3
task_dta_list[2]	task_dta_t	{...}
  NOE			uint32_t	43722
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2
task_dta_list[3]	task_dta_t	{...}
  NOE			uint32_t	43725
  LET			uint32_t	2
  BCET			uint32_t	2
  WCET			uint32_t	2

Calculo del factor de uso de CPU.

U = sumatoria(WCET / Tsystick)

Tsystick = 1000 us = 1 ms

U = 43/1000 + 3/1000 + 2/1000 + 2/1000 = 0.05

Como U < 1 la CPU no esta sobrecargada, segun las estructuras de datos de las cuatro tareas.