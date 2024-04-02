FROM eclipse-temurin:17.0.10_7-jre-alpine
WORKDIR /opt/todoapp
COPY target/todo-app-dockerized-0.0.1-SNAPSHOT.jar todo-app-dockerized-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/opt/todoapp/todo-app-dockerized-0.0.1-SNAPSHOT.jar"]
