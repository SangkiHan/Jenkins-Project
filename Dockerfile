FROM adoptopenjdk:11-jre-hotspot
# FROM amazoncorretto:11-alpine-jdk

# RUN apk --no-cache add curl
# RUN addgroup -S spring -g 1001 && adduser -S spring -u 1001 -G spring
# USER spring:spring

# ENTRYPOINT ["java","-jar","/app.jar"]

ARG WAR_FILE=/home/tkdrl8908/Project/war/Jenkins-Project-0.0.1-SNAPSHOT.war
ARG APP_NAME=app

RUN mkdir -p /home/project
# RUN mkdir -p /gclog
WORKDIR /home/project

COPY ${WAR_FILE} /home/project/app.war
#change to user root to install certificates
# USER root
# RUN keytool -noprompt -importcert -keystore ${JAVA_HOME}/jre/lib/security/cacerts -storepass changeit -file /home/spring/planin.certificate -alias 1
# RUN cp ${JAVA_HOME}/jre/lib/security/cacerts ${JAVA_HOME}/jre/lib/security/jssecacerts
# USER spring:spring

# EXPOSE 80

ENTRYPOINT java -jar /home/spring/app.war 