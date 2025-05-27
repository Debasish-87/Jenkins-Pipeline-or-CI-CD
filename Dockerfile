# Jenkins base image
FROM jenkins/jenkins:lts

# Switch to root to install node and other dependencies
USER root

# Install curl and Node.js (LTS)
RUN apt-get update && apt-get install -y curl gnupg2 \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean

# Check versions (optional)
RUN node -v && npm -v

# Setup Docker client (optional, if you want Jenkins to build images inside container)
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y docker-ce-cli

# Switch back to Jenkins user
USER jenkins

# Jenkins runs on port 8080 by default
EXPOSE 8080

# Default command
CMD ["jenkins.sh"]
