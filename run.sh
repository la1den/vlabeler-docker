#!/bin/bash

xhost +local:
docker-compose run vlabeler 
xhost -local:
