[![CircleCI](https://circleci.com/gh/tamerthamoqa/CDND-Operationalize-A-Machine-Learning-Microservice-API/tree/master.svg?style=svg)](https://circleci.com/gh/tamerthamoqa/CDND-Operationalize-A-Machine-Learning-Microservice-API/tree/master)

# CDND-Operationalize-A-Machine-Learning-Microservice-API

This is a repository for the fourth project in the AWS Cloud DevOps Engineer Udacity Nanodegree (Operationalize A Machine Learning Microservice API).

The objective of this project is to operationalize a Machine Learning API Microservice on a Kubernetes cluster based on a Python Flask web application that would host a pre-trained Sklearn model that was trained to predict housing prices in the city of Bostin according to several features ([Kaggle data source](https://www.kaggle.com/c/boston-housing)). The following is the required list of tasks:


* Testing the project code using linting.
* Completing a Dockerfile to containerize the application.
* Deploying the containerized application using Docker and making a prediction.
* Improving the log statements in the source code for the application.
* Configuring Kubernetes and creating a Kubernetes cluster.
* Deploying a container using Kubernetes and making a prediction.
* Uploading a complete Github repository with CircleCI to indicate that the code has been tested.


### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally (running on minikube would suffice)
* Create Flask app in Container
* Run via kubectl


### Running the application

1. Standalone (Python 3.7): 

__Note__: The application runs on port 80; user privilege issues would need to be handled, or changing the port to a port above 1000 would suffice (e.g: 8000).

```
# Setting a python 3.7 virtual environment and activating it
python3 -m venv .venv
source .venv/bin/activate

# Installing the necessary dependencies
make install

# Running the main application
python app.py
```

2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


## Project Files

* __.circleci/config.yml:__ CircleCI configuration file.
* __app.py:__ The Flask web application
* __model_data/boston_housing_prediction.joblib:__ Pretrained sklearn model
* __requirements.txt:__ Required Python packages to run the application
* __Makefile:__ Commands to install and lint the application
* __Dockerfile:__ Defines the Docker container to run the application in
* __upload_docker.sh:__ Tags and uploads the Docker image to DockerHub
* __run_docker.sh:__ Runs the application in a Docker container (defined by the Dockerfile)
* __run_kubernetes.sh:__ Runs the application in a Kubernetes cluster
* __make_prediction.sh:__ Makes a prediction call to the running Application on port 8000
* __output_txt_files/docker_out.txt:__ Console output from running run_docker.sh and make_prediction.sh
* __output_txt_files/kubernetes_out.txt__ Console output from running run_kubernetes.sh and make_prediction.sh
