#!/bin/bash

xhost +
docker-compose run vlabeler 
xhost -
