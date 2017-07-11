# alpine-jenkins

This is a fully functional Jenkins server which runs in an alpine linux that is ready out of the box to build pipelines and comes with the blue ocean plugin.

## Supported tags
* latest


## Usage
Highly recommend running it without the setup wizard since it comes with all the plugins you should need installed
`docker run -p 8080:8080 --env JAVA_OPTS="-Djenkins.install.runSetupWizard=false" liatrio/alpine-jenkins`

You probably want to give it access to your docker host so that jenkins can spin up containers for builds as well as build its own containers.

`docker run -p 8080:8080 --env JAVA_OPTS="-Djenkins.install.runSetupWizard=false" -v /var/run/docker.sock:/var/run/docker.sock liatrio/alpine-jenkins`
