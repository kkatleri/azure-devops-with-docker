# Introduction 
This is a sample Spring Boot Application project with TODO feature. The main objective of this project to explore 
Azure Pipelines services by deploying dockerized sample TODO application on Azure VM. 

# Getting Started
1.	Software dependencies
   - Java 17
   - Maven 3.x
   - mysql database
   - Docker

# Implementation journey
   - Detailed implementaion journey for this project can be found [here](./docs/implementation.md) 

# Build and Test
1. Local installation
   - Clone this repository
   - Install Java 17 and above.
   - Run Maven build `mvn clean package`
   - Run docker build - `docker build -t todoapp .`
   - Launch containers to start the application - `docker compose up`
2. Local Testing
   - Get all TODOs - `http://localhost/todos'

# VM deployment
## VM Preparation
1. Spin up a new Azure VM for app deployment
2. Install Java 17 on the VM
3. Install Docker

## Setup self agent
1. Follow instruction [here](#https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops&tabs=yaml%2Cbrowser)

## Create service connection in dev azure portal
1. Create service connection for Azure VM. This is referenced in azure-pipeline.yml

## Run Azure pipeline
1. Setup this code in Azure repo. Alternatively it can be setup on other remote Git repos like GitHub. 
2. `azure-pipelines-build.yml` & `azure-pipelines-deploy.yml` will enable continuous integration and deployment on Azure Pipelines platform.
3. Run these pipeline.

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 
