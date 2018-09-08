FROM jenkins:latest
ENV SECRETS_DIR=/run/secrets
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY dockerprovisioner.sh /usr/bin/dockerprovisioner.sh
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
CMD ["/usr/bin/dockerprovisioner.sh"]
#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt
