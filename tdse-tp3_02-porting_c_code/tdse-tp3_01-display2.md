Arquitectura General del Sistema
* El archivo app.c gestiona el ciclo principal de la aplicación mediante la inicialización y actualización periódica de una lista de tareas estructurada en task_cfg_list, la cual incluye las tareas de prueba y de control de pantalla.
* El sistema recopila métricas temporales de ejecución para cada tarea evaluando los tiempos en microsegundos de la última ejecución (LET), el mejor caso (BCET) y el peor caso (WCET).
* El archivo app_it.c contiene las rutinas de interrupción del sistema, donde la función HAL_SYSTICK_Callback incrementa de manera asíncrona la variable global de temporización g_app_tick_cnt.
* El archivo systick.c provee la función systick_delay_us, la cual ejecuta un retardo bloqueante basado en ciclos evaluando directamente el registro de conteo del hardware SysTick.
Control del Hardware del Display (Bajo Nivel)
* El archivo display.h define la interfaz base del hardware, estableciendo los tipos de conexión permitidos, como DISPLAY_CONNECTION_GPIO_4BITS y DISPLAY_CONNECTION_GPIO_8BITS.
* El archivo display.c implementa el controlador de bajo nivel utilizando comandos estándar para la inicialización, limpieza de memoria, configuración del bus y posicionamiento del cursor en pantallas LCD.
* La escritura hacia el hardware se logra alternando lógicamente los pines GPIO (como el Enable, Register Select y pines de datos D4-D7), apoyándose en secuencias de activación y tiempos de espera de la librería de retardos.
Interfaz de Tareas de Pantalla
* Aunque su código fuente no está explícito en la consulta, el archivo task_display_attribute.h define la estructura que alberga el estado actual, el evento disparador y el arreglo ddram, utilizado como memoria intermedia de los caracteres a mostrar.
* El archivo task_display_interface.c proporciona la función put_event_task_display(), cuya utilidad es escribir los caracteres de entrada en el arreglo bidimensional local ddram.
* Al culminar la escritura en memoria, esta interfaz notifica automáticamente que existen datos listos activando una bandera (flag = true) y configurando el evento EV_DSP_UPDATE.
Comportamiento de la Tarea de Pruebas y su Máquina de Estados
* El archivo task_test_attribute.h declara la estructura task_test_dta_t, utilizada para mantener un registro persistente de un temporizador en atraso (tick) y un conteo incremental (counter).
* El archivo task_test.c inicializa estas variables en task_test_init y envía el mensaje de bienvenida "LCD Display Test" a la pantalla.
* La función void task_test_statechart(void) incrementa en cada ejecución su variable interna counter e itera restando un valor a la variable tick hasta que esta llegue al mínimo.
* Cuando el temporizador alcanza su límite mínimo, la máquina de estados reinicia su contador temporal y ejecuta una llamada a la interfaz gráfica que imprime el texto base "Test Nro: ******" junto con un formato en cadena del valor de la prueba, forzando la actualización de la pantalla de forma cíclica.
Comportamiento de la Tarea de Pantalla y su Máquina de Estados
* El archivo task_display.c ejecuta la configuración inicial del display mediante la orden a la capa física de configurarse como una interfaz GPIO de 4 bits en task_display_init.
* La función void task_display_statechart(void) opera mediante una estructura switch que evalúa un estado inactivo de espera denotado como ST_DSP_IDLE.
* Mientras el estado es ST_DSP_IDLE, la función corrobora si se ha levantado la bandera del evento de actualización de pantalla (EV_DSP_UPDATE); de ser cierto, el sistema transiciona inmediatamente al estado de ejecución ST_DSP_UPDATE.
* Al entrar en ST_DSP_UPDATE, la máquina desactiva la bandera temporal, ubica el cursor de manera directa a través del puerto inferior y transfiere el contenido completo de las filas del buffer ddram hacia el display utilizando las primitivas de hardware, para luego regresar al estado de inactividad.