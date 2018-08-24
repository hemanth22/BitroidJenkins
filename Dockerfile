FROM jenkins:latest
ENV SECRETS_DIR=/run/secrets
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY plugins.txt /usr/share/jenkins/plugins.txt
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/plugins.txt
