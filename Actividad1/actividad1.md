# Tipos de Kernel y sus diferencias

## Monolítico

En este enfoque, el kernel es un solo programa que se ejecuta en modo kernel y tiene acceso completo a todos los recursos del sistema. Todas las funciones del sistema operativo se ejecutan en el mismo espacio de memoria. Linux es un ejemplo de un sistema operativo con un kernel monolítico.

## Microkernel

En un kernel microkernel, solo las funciones esenciales se ejecutan en modo kernel, mientras que las funciones del sistema operativo, como controladores de dispositivos, se ejecutan en el espacio de usuario. Esto permite modularidad y facilita la expansión del sistema operativo. Ejemplos: QNX, MINIX.

## Híbrido

Combina características de los kernels monolíticos y microkernels. Algunas funciones del sistema operativo se ejecutan en modo kernel, mientras que otras se ejecutan en el espacio de usuario. Ejemplo: Windows NT.

# User vs Kernel Mode

- **Modo Usuario (User Mode):** Acceso limitado al hardware, no puede ejecutar instrucciones privilegiadas. Aplicaciones y procesos de usuario se ejecutan aquí.

- **Modo Kernel (Kernel Mode):** Acceso completo al hardware, puede ejecutar instrucciones privilegiadas. El kernel del sistema operativo realiza tareas críticas.

# Interruptions vs Traps

- **Interrupciones (Interrupts):** Señales generadas por hardware o software que indican la necesidad de atención inmediata. Provocadas por eventos como la llegada de datos o errores de ejecución. Suspensión temporal para atender la solicitud.

- **Trampas (Traps):** También conocidas como excepciones, son eventos generados por el propio programa en ejecución. Ocurren debido a errores en el código, como división por cero. El control se transfiere al sistema operativo para manejar la situación.

