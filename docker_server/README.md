# Introduction 

This repo manages a Jenkins server on a Docker.

I have used this docker: https://github.com/jenkinsci/docker/blob/master/README.md

# Run

To start the Jenkins server just run the following command:

```
./start.sh <jenkins portal port> <jenkins additional port>
```

For example:

```
./start.sh 80 50000
```

This will start the Jenkins server and prepare all necessary to connect to it.

Then you can acces to http://localhost/login?from=%2Fjenkins or whatever port you specify in the start command to add the admin password.

# Stop

To stop the server just run the following command:

```
./stop.sh
```
