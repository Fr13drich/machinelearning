[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Fr13drich/machinelearning/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Fr13drich/machinelearning/tree/main)

## Project summary

Operationalize a Machine Learning Microservice API to predict housing prices in Boston using kubrnetes


* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

how to run the Python scripts and web app

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

Explanation of the files in the repository

app.py              machinelearning application
Dockerfile          to build the docker image
Makefile            set up the virtual environment, install the requirements and lint
make_prediction.sh  to send a request to the application
requirements.txt    list of modules to be install for the python app
run_docker.sh       run the application in a docker container
run_kubernetes.sh   run the application in a kubrnetes cluster
upload_docker.sh    push the docker image to dockerhub