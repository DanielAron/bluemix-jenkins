# Summary
A Jenkins Docker image with Docker and Node.js native installation. 
Based on the official Jenkins.

# Running a container on bluemix in a scalable container group
See the cf-create-group.sh script

# Jenkins

## Plugins
No additional plugins are installed, that you have to do yourself.
For npm and Docker the following plugins are needed:
-  [CloudBees Docker Build and Publish plugin] (https://github.com/jenkinsci/docker-build-publish-plugin/blob/master/README.md)
-  [NodeJS plugin] (http://wiki.jenkins-ci.org/display/JENKINS/NodeJS+Plugin) 

## NVM
The image comes with nvm installed in `/usr/local/nvm`

## Node.js
Nvm can be used to install different versions of Node.js
Currently it is 0.12.7 in `/usr/local/nvm/versions/node/v0.12.7`
Add this in your build


