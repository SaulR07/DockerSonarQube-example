# 🐳 SonarQube

Contenedor docker de SonarQube 8.9 en windows

## 📝 Requisitos

- Docker
- JDK 11

**_Esta versión de SonarQube usa el JDK 11 de java_**

## ⚙ Configuración

### JDK

Debemos indicar donde esta la instalación de nuestro JDK 11 en nuestro script.bat

1. Abrimos el archivo script.bat con un editor de texto
2. Modificamos la variable set JAVA_HOME apuntando en donde se encuentra nuestra instalación del JDK EJ. JAVA_HOME=%PROGRAMFILES%\Java\jdk-11
3. Guardamos los cambios.

### Almacenamiento

Debemos de indicar la ruta en nuestra maquina donde se almacenara la información de nuestro SonarQube para esto debemos de seguir los siguientes pasos:

1. Abrir el docker-compose.yml
2. En el apartado de volumes indicar las rutas donde se almacenera la información de nuestro contenedor Ej. C:\DockerSonarQube\storage\data:/opt/sonarqube/data
3. Guardamos los cambios en nuestro archivo.

**Nota:**
En el ejemplo de la ruta C:\DockerSonarQube\storage\data **:** /opt/sonarqube/data la ruta que debemos cambiar es la que se encuentra anterior a los **:** la ruta que se encuentra después no se debe cambiar.

### SCM

Una vez instalado e iniciado el contenedor entramos en nuestro navegador a localhost:9000, nos logeamos y entramos al menu de administración en SCM lo deshabilitamos.

## 🚀 Instalación

### Descarga

Descargaremos el proyecto de github desde la siguiente liga :

### Construcción del contenedor

Desde nuestra terminal ingresaremos a la carpeta donde se tenga el proyecto que acabos de descargar de github y ejecutaremos el siguiente comando: `docker compose up`

Con este comando construiremos e iniciaremos nuestro contenedor desde el docker-compose.yml

### Iniciar contenedor

Para iniciar nuestro contenedor que construimos en el paso anterior debemos ejecutar el comando `docker start sonarqube`

### Detener contenedor

Para iniciar nuestro contenedor debemos ejecutar el comando `docker stop sonarqube`

## 👨‍🚀 Uso

Pequeño tutorial de como ejecutar un escaneo de un proyecto (para este ejemplo usaremos un proyecto de java con maven)

1. Iniciamos nuestro contenedor, esperamos a que inicie y entramos al portal de SonarQube ingresando en nuestro navegador a localhost:9000.
2. Ingresamos nuestro nombre de usuario y contraseña por defecto es admin las dos, si es la primera vez que ingresamos a SonarQube nos pedirá que cambiemos nuestra contraseña.
3. Creamos un nuevo proyecto:

   1. Seleccionamos la opción de agregar un proyecto.
   2. Seleccionamos la opción manual.
   3. Agregamos la llave del proyecto.
   4. Agregamos un token.
   5. Seleccionamos la opción de maven.
   6. Copiamos el comando que nos genero SonarQube.

4. Desde cmd ejecutamos el archivo script.bat
5. Seleccionamos la opción 2. Correr SonarQube
6. Ingresamos la ruta donde se encuentra nuestro proyecto.
7. Ingresamos el comando que nos creo SonarQube y que copiamos anteriormente.
8. Esperamos a que termine de escanear nuestro proyecto y volvemos a nuestro navegador a localhost:9000 donde estarán los resultados de nuestro proyecto.
