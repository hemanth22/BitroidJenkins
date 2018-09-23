FROM jenkins:latest
ENV SECRETS_DIR=/run/secrets
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
USER root
RUN apt-get update;apt-get install git curl binutils make gcc cpp g++ maven groovy -y
