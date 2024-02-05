# SISITEMAS OPERATIVOS 1 - 201709051
# ACTIVIDAD 2  
# Nombre de usuario de GitHub para consultar
GITHUB_USERNAME=hbmg981

# Crear la carpeta de log para la fecha actual
LOG_FOLDER=$(date +%F)
mkdir -p /tmp/${LOG_FOLDER}

# Consultando API de Github del usuario
API_RESPONSE=$(curl -s "https://api.github.com/users/${GITHUB_USERNAME}")

# Comprobando que la variable no este vacia
if [ -z "${API_RESPONSE}" ]; then
    #Si esta vacia muestra error
    echo "Error al obtener la información del usuario ${GITHUB_USERNAME}"
    exit 1
fi

# Parseando JSON para extraer datos del usuario
USER_LOGIN=$(echo ${API_RESPONSE} | jq -r '.login')
USER_ID=$(echo ${API_RESPONSE} | jq -r '.id')
ACCOUNT_CREATED_AT=$(echo ${API_RESPONSE} | jq -r '.created_at')

# Mensaje de bienvenida
echo "Hola ${USER_LOGIN}. User ID: ${USER_ID}. La cuenta fue creada el: ${ACCOUNT_CREATED_AT}."

# Mensaje de log
echo "Hola ${USER_LOGIN}. User ID: ${USER_ID}. La cuenta fue creada el: ${ACCOUNT_CREATED_AT}." >> "/tmp/${LOG_FOLDER}/saludos.log"

CRON_EXPRESSION="*/5 * * * *"
(crontab -l ; echo "${CRON_EXPRESSION} $/home/hbmg/Documentos/Sopes1/Magistral/SO1_Actividades_201709051/Actividad2/actividad2.sh") | crontab -

