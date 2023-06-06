#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=machinelearning .
# Step 2: 
# List docker images
docker images ls
# Step 3: 
# Run flask app
docker run -p 8000:80 -p 80:80 -it --log-driver json-file --log-opt mode=non-blocking machinelearning 
