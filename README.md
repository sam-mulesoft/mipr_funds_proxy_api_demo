# mipr_funds_proxy_api

## Overview

This repository contains the source code for a simple Mule application based on a provided OAS3.0 spec. Additionally, this repository stores the Dockerfile that demonstrates how to containerize a Mule application, as well as the kubentes manifest that defines how to deploy this specific application in a Kubernetes cluster. 

## The Stack
  1. Git
  2. Docker(Hub)
  3. Kubernetes
  4. Jenkins
  5. Mule Runtime - Containerized via Docker

## The Process
![image](https://user-images.githubusercontent.com/62963065/141478621-7b5a62b3-3385-4428-9365-6313d4c33652.png)


## Getting Started

### Configure Jenkins

In order for Jenkins to interact with Kubernetes and Docker, these two applications should be installed and configured such that the Jenkins user can execute the relevant commands. Additionally you will need the following plugs:
 * Amazon Web Services SDK :: All
 * Git plugin
 * Kubernetes CLI Plugin
 * Pipeline: API


### Configure DockerHub

There is no specific docker configuration necessary, docker simply serves as an image repository in this case. Technically this could be any image repostiory (ECR, Nexus, etc)

### Next Steps
  1. Clone this repository
  2. Configure your Jenkins job (see existing Jenkins file)

|Jenkins variables     |Default value        | Required | Description                                         |
|------------------------|---------------------|--------|--------------------------------------------|
|`ANYPOINT_HOST`         |no default           |Yes 	|Anypoint hostname|
|`ANYPOINT_USERNAME`     |no default           |Yes\* 	|Login username for Anypoint Platform           |
|`ANYPOINT_PASSWORD`     |no default           |Yes\* 	|Login password for Anypoint Platform           |
|`registry`    |no default           |Yes\* 	|The DockerHub Registry to which the images should be pushed          |
|`dockerHubCreds`|no default           |Yes\* 	|DockerHub credentials (stored in Jenkins credentials provider)           |
|`orgName`               |no default| Yes | Anypoint Organization name.  Ex: My Business   |
|`envName`               |no default           | Yes |Anypoint environment name. Ex: Sandbox          |
|`gitCreds`      |no default           |Yes |GitHub credentials (stored in Jenkins credentials provider)          |
|`k8s_namespace`      |no default           |Yes |Desired K8S namespace            |
|`k8s_appname`      |no default           |Yes |Desired K8S app map name            |
|`k8s_configmap`      |no default           |Yes |Desired K8S config map name             |
|`k8s_service`      |no default           |Yes |Desired K8S service name             |
|`appPort`      |no default           |Yes |Port of running app             |
|`imageName`      |no default           |Yes |Desired image name (including tag)             |
 3. Configure K8S environment and provide the ./kube/config file as Secret file named ```eks_config``` in Jenkins
 4. Push changes to your application in Git from Anypoint Studio
