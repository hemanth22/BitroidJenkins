FROM jenkins:latest
ENV SECRETS_DIR=/run/secrets
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
USER root
RUN apt-get update;apt-get install git curl binutils make gcc cpp g++ -y
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt