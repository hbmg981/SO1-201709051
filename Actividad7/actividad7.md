# Actividad 7 - SO1 - 1S2024  
### 201709051

# Completely Fair Scheduler

Completely Fair Scheduler (CFS) de Linux es un algoritmo de planificación de procesos diseñado para proporcionar una distribución justa y equitativa del tiempo de CPU entre los procesos en ejecución, utilizando asignaciones proporcionales de "shares" de tiempo de CPU y trabajando en conjunto con una política de control de admisión para garantizar una asignación justa de recursos de CPU.

## CARACTERISTICAS PRINCIPALES

### Justicia proporcional: 
El CFS asigna tiempo de CPU a los procesos de manera proporcional, en función de su peso relativo o "shares". Esto significa que los procesos con un mayor número de shares recibirán más tiempo de CPU en comparación con aquellos con menos shares.

### División de tiempo equitativa: 
Similar al ejemplo proporcionado en el texto, donde se asignan T shares entre todas las aplicaciones, el CFS se asegura de que cada proceso reciba una parte justa del tiempo de CPU. Por ejemplo, si hay tres procesos y se asignan 100 shares en total, el CFS garantizará que cada proceso reciba su porción de tiempo de CPU según sus shares asignados.

### Admisión controlada: 
El CFS trabaja junto con una política de control de admisión para garantizar que un proceso solo reciba los shares de tiempo de CPU que se le han asignado si hay suficientes shares disponibles. Si un nuevo proceso solicita una cantidad de shares que no están disponibles, el controlador de admisión denegará su entrada al sistema.

### Implementación del algoritmo: 
El CFS implementa un algoritmo basado en árboles de prioridad rojos-negros para mantener un seguimiento de los procesos en ejecución y asignar tiempo de CPU de manera eficiente.

### Justicia y suavidad: 
El CFS se esfuerza por garantizar una distribución justa y suave del tiempo de CPU entre los procesos en ejecución, evitando situaciones en las que un proceso pueda acaparar la CPU durante largos períodos y afectar negativamente el rendimiento general del sistema.

## FUNCIONAMIENTO DEL CFS

### Modelo basado en shares: 
En lugar de asignar prioridades estáticas a los procesos, el CFS asigna una cantidad de "shares" de tiempo de CPU a cada proceso en función de su peso relativo. Los procesos con un peso mayor reciben más shares, lo que significa que tienen más tiempo de CPU disponible.

### Mantenimiento de la estructura de árbol de prioridad: 
El CFS mantiene una estructura de árbol de prioridad rojo-negro para realizar un seguimiento de los procesos en ejecución. Este árbol se utiliza para determinar qué proceso se ejecutará a continuación.

### Selección del próximo proceso para ejecutar: 
El CFS selecciona el proceso con la cantidad más pequeña de tiempo de CPU utilizado (o sea, el que ha tenido menos acceso a la CPU) como el próximo proceso para ejecutar. Esto garantiza que los procesos tengan acceso a la CPU en proporción a sus shares asignados.

### Mecanismos de ajuste dinámico: 
El CFS realiza ajustes dinámicos para garantizar que los procesos reciban una cantidad justa de tiempo de CPU. Si un proceso utiliza todo su tiempo de CPU asignado, se ajusta su posición en el árbol de prioridad para que tenga menos prioridad en la próxima selección.

### Control de admisión: 
El CFS trabaja en conjunto con un control de admisión para garantizar que un proceso solo reciba los shares de tiempo de CPU que se le han asignado si hay suficientes shares disponibles. Si no hay suficientes shares disponibles para admitir un nuevo proceso, se denegará su entrada al sistema.