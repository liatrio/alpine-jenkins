FROM jenkinsci/jenkins:2.66-alpine

USER root

RUN apk -U add docker
# Setup Jenkins
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN apk add --update shadow \
    && groupadd -g 50 staff \
    && usermod -a -G staff jenkins
USER jenkins
RUN /usr/local/bin/install-plugins.sh ansicolor \
blueocean \
build-environment \
cloudbees-folder \
config-file-provider \
credentials-binding \
credentials \
docker-plugin \
docker-slaves \
envinject \
git \
groovy \
job-dsl \
jobConfigHistory \
naginator \
pam-auth \
pipeline-utility-steps \
workflow-aggregator \
sonar

COPY resources/basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groov
COPY resources/maven-global-settings-files.xml /usr/share/jenkins/ref/maven-global-settings-files.xml
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
USER root
