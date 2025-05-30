@echo off
REM Get the directory of the batch file
set BASE_DIR=%~dp0

REM Remove trailing backslash (optional but safe)
set BASE_DIR=%BASE_DIR:~0,-1%

REM Set paths relative to the batch file's location
set JAR_FILE=%BASE_DIR%\academy-0.0.11-SNAPSHOT.jar
set CONFIG_FILE=%BASE_DIR%\application.properties

REM Run Spring Boot with external config
java -jar "%JAR_FILE%" --spring.config.location=file:%CONFIG_FILE%
