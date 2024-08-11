# Jenkins Infrastructure and CI/CD Pipeline Setup

This repository contains the configuration and setup for a Jenkins infrastructure deployed on an AWS EC2 virtual machine. This setup is designed to facilitate multiple tests without altering the working environment.

## Overview

The repository includes:

- Jenkins setup on AWS EC2.
- Docker configurations updated with new versions of JDK, Jenkins, and other dependencies.
- Configuration of Jenkins with necessary plugins and initial setup.
- Jenkins pipeline configuration including unit tests, API tests, and E2E tests.
- Post-build actions with email notifications for build failures.

## Jenkins Configuration

### Setup

1. **Repository Cloning**: The setup is based on the repository [https://github.com/srayuso/unir-build-tools.git](https://github.com/srayuso/unir-build-tools.git). Docker images from this repository have been updated with newer versions of JDK, Jenkins, and other dependencies.
2. **Jenkins Initialization**: Jenkins was started with the provided password for initial access and configuration. Recommended Jenkins plugins were installed for optimal usage.
3. **Job Creation**: A new Jenkins job named **"Hello World"** was created using the `agent01` container, which includes Docker, OpenJDK 11 JRE, Git, and Make. The agent needs to be configured with the provided IP and `JENKINS_SECRET` from the Jenkins interface.

### Jenkinsfile

- **Pipeline Configuration**: The Jenkinsfile is based on the provided practice guidelines but includes additional required criteria.
- **Repository Fork**: Changes from the previous practice were incorporated into the forked repository [https://github.com/jlborrego/unir-cicd](https://github.com/jlborrego/unir-cicd).
- **Test Stages**: The Jenkinsfile includes stages for unit tests, API tests, and E2E tests. Results are published as artifacts and can also be reviewed in the job's output.

### Post-Build Actions

- **Email Notifications**: In case of a pipeline failure, the Jenkinsfile includes a command to send an email. The email configuration was generated using the snippets tool and includes job and build information.

## Running the Pipeline

1. **Execute the Job**: Start the Jenkins job to run the pipeline.
2. **Monitor Execution**: The job's logs will show the execution of different pipeline stages.
3. **Review Artifacts**: Access the generated artifacts, such as `.xml` files containing test results.

**Example Log Output**: At the end of the job logs, you can see the successful execution of the pipeline and the email command for notifications in case of failure.

## Prerequisites

- An AWS EC2 instance with Jenkins and Docker installed.
- Configuration of Jenkins with necessary plugins and initial setup.
- Proper configuration of Jenkins agents with the correct IP and secret.

## Conclusion

This setup provides a robust Jenkins infrastructure for CI/CD pipelines, including the ability to run unit tests, API tests, and E2E tests. The configuration ensures automated test execution and notifications for build failures.

For further details on the Jenkinsfile and configuration, please refer to the Jenkins job configuration and the forked repository [https://github.com/jlborrego/unir-cicd](https://github.com/jlborrego/unir-cicd).


Thank you for exploring the Jenkins Infrastructure and CI/CD Pipeline setup!
