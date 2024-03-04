#!/bin/bash

# Nombre del canal
CANAL="canal"

# Crear el FIFO (pipe)
mkfifo "$CANAL"

# Leer del canal en segundo plano
cat "$CANAL" &

# Esperar un momento para asegurarse de que el proceso en segundo plano esté listo
sleep 1

# Bucle para enviar y recibir mensajes
while true; do
    # Enviar mensaje desde Usuario A
    read -p "Usuario A: " mensaje
    echo "Usuario A: $mensaje" > "$CANAL"

    # Leer mensaje recibido
    mensaje_recibido=$(cat "$CANAL")
    echo "$mensaje_recibido"
done

