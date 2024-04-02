# Introduction
This document talks about steps taken to build this project and challenges resolved along the way.

# Goal
- This project is an extension of the [sample todo-app](#https://github.com/kkatleri/azure-devops) where the
  application was deployed as an executable jar directly on the Azure VM using Azure pipelines.
- The goal of this project is to explore Azure Pipelines to deploy containerized applications on Azure VM.
- That means there will be 2 containers running on Azure VM - Spring boot app container and Mysql database container 


# Phase 1
- The scope phase 1 is to just containerize Spring Boot application while leaving MYSQL database running on host 
  machine. Meaning, spring boot application running in docker container will connect with Mysql database running on 
  host machine.
- This is to simulate real world scenarios where databases run on their own servers and managed by independent DB 
  teams. In this case, Dev team will only containerize its application while still connecting to the database 
  running on different host.
- Learnings & Challenges
  - Spring boot app running inside container was not able to access Mysql database running out on the host using 
    localhost:3306 config. Below are the options to address this issue
    1. Use host actual IP address in the database config
    2. Keep localhost config but run app container on host network using `--network=host` option
  - Since this was single container exercise, its implemented using Dockerfile.
- Local build and deployment 
  - Build executable jar using maven - `mvn clean package`
  - Build docker image - `docker build -t todoapp .`
  - Launch container with option 1 - `docker run -p 80:9090 -t todoapp`
  - Launch container with option 2 - `docker run --network=host -t todoapp`

# Phase 2
- This scope of phase 2 is to containerize Mysql database as well and launch both the containers using docker 
  compose on Azure VM.
- This is to simulate Microservices architecture where 2 or more services running in different containers managed by 
  the same Dev team.
- This implementation will eliminate the need of pre-task to install mysql database. It will be automated as part of 
  deployment.
- Learnings & challenges
  - Created 2 seperate pipelines for build and deployment. This will enable build once and deploy everywhere strategy.
  - One of challenges I faced in this phase was - Spring Boot app container was trying to connect to MySQL database before MySQL container is all up and running. This resulted in failure to start Spring Boot app container. This was fixed by adding `restart=on-failure` config for app container. This config restarted the app container on failure and was able to establish successful connection with MySQL container. 
- Local build and deployment
  - Build executable jar using maven - `mvn clean package`
  - Build docker image - `docker build -t todoapp .`
  - cd to directory with compose.yml & Launch application - `docker compose up`