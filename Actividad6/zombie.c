#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid < 0) {
        // Error al crear el proceso hijo
        perror("Error al crear el proceso hijo");
        exit(EXIT_FAILURE);
    } else if (pid == 0) {
        // Código ejecutado por el proceso hijo
        printf("Proceso hijo creado. PID: %d\n", getpid());
        sleep(10); // Espera 10 segundos después de que el padre termine
        printf("Proceso hijo terminado.\n");
        exit(EXIT_SUCCESS);
    } 

    // Código ejecutado por el proceso padre
    printf("Proceso padre creado. PID del hijo: %d\n", pid);
    printf("Proceso padre terminando...\n");
    exit(EXIT_SUCCESS);
}

