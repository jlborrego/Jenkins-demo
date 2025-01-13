#!/bin/bash

set -e

SCRIPT_DIR=$(dirname $(realpath $0))

[ -z "$1" -o -z "$2" ] && echo "USAGE: $(basename $0) <jenkins portal port> <jenkins port>" && exit 2

JENKINS_PORTAL_PORT=$1
JENKINS_PORT=$2
JENKINS_DATA_DIR=$SCRIPT_DIR/'jenkinsData'

# Generate dirs
for DIR in $JENKINS_DATA_DIR; do
        [ -d $DIR ] || mkdir $DIR
done

# Access dirs
sudo chmod 777 -R \
        $JENKINS_DATA_DIR

# Run Jenkins Server docker
docker run -d \
        -v $JENKINS_DATA_DIR:/var/jenkins_home \
        -p $JENKINS_PORTAL_PORT:8080 \
        -p $JENKINS_PORT:50000 \
        --name jenkins-server \
        jenkins/jenkins:lts-jdk11
