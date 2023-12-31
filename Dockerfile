FROM adoptopenjdk:11-jre-hotspot

ARG WAR_FILE=/build/libs/Jenkins-Project-0.0.1-SNAPSHOT.war
ARG APP_NAME=app

RUN mkdir -p /home/project
WORKDIR /home/project

COPY ${WAR_FILE} /home/project/app.war 

ENTRYPOINT java -Duser.timezone=GMT+09:00 -jar /home/project/app.war
