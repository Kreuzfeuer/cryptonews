# Используем официальный образ OpenJDK 11
FROM openjdk:21-jdk-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем JAR-файл в рабочую директорию
COPY target/*.jar /app/app.jar

# Задаем переменную окружения для порта, если она не установлена
ENV PORT 8085

# Экспортируем порт приложения
EXPOSE ${PORT}

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "/app/app.jar"]