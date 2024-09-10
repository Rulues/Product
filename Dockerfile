FROM openjdk:17-jdk-slim
 
# Copia el archivo JAR desde la carpeta 'target' a la imagen
COPY target/*.jar /app/app.jar
 
# Define el directorio de trabajo
WORKDIR /app
 
# Expone el puerto en el que tu aplicación va a escuchar (ajusta si es necesario)
EXPOSE 8080
 
# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]