# Alpine Jenkins

This is a fully functional Jenkins server which runs in an alpine linux that is ready out of the box to build pipelines and comes with the blue ocean plugin.

## Supported Tags
* latest


## Basic Usage
`docker run -p 8080:8080 liatrio/jenkins-alpine`

## Docker Enabled Usage  
To allow Jenkins to utilize your host Docker installation for spinning up containers in builds and building images, mount the Docker socket as a volume.

`docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock liatrio/jenkins-alpine`
