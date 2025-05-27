FROM jenkins/jenkins:lts

USER root

# Match Docker GID from host
ARG DOCKER_GID=999
RUN groupadd -g ${DOCKER_GID} docker \
    && usermod -aG docker jenkins

# Install Docker CLI (if not already)
RUN apt-get update && apt-get install -y docker.io

USER jenkins
