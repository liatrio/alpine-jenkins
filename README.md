# alpine-jenkins

This is a fully functional Jenkins server which runs in an alpine linux that is ready out of the box to build pipelines and comes with the blue ocean plugin.

## Supported tags
* latest


## Usage

`docker run -p 8080:8080 liatrio/alpine-jenkins`

You probably want to give it access to your docker host so that jenkins can spin up containers for builds as well as build its own containers.

`docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sockliatrio/alpine-jenkins`
