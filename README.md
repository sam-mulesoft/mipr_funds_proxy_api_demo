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

### Clone this repository
