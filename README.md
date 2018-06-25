# Pipelines Hugo

This repository has been forked from [this github repo](https://github.com/karelbemelmans/docker-pipelines-hugo) it uses currently Hugo version 0.42.1 

This is a Docker image based on [debian:buster-slim](https://hub.docker.com/_/debian/). It contains Hugo, the static website generator and the aws-cli Python scripts.
It can be used to deploy Hugo site to AWS S3 using Atlassian Bitbucket Pipelines.

Includes:
* Python 2.7.15
* pip 10.0.1
* aws-cli/1.15.44
* Hugo Static Site Generator v0.42.1

Check the original author's post [here](https://www.karelbemelmans.com/2016/10/deploying-a-hugo-website-to-amazon-s3-using-bitbucket-pipelines/) for more information about how to use this Docker image for your Pipelines setup.

## Added Node, NPM and Gulp 
Latest version also includes:
* Node v10.5.0
* NPM v6.1.0
* Gulp v3.9.1

## Testing the image

To test what's inside, run the docker run command in interactive mode

```
PS C:\> docker run -it abelperezok/docker-pipelines-hugo:latest
root@ab488d178286:/# python --version
Python 2.7.15
root@ab488d178286:/# pip -V
pip 10.0.1 from /usr/local/lib/python2.7/dist-packages/pip (python 2.7)
root@ab488d178286:/# aws --version
aws-cli/1.15.44 Python/2.7.15 Linux/4.9.87-linuxkit-aufs botocore/1.10.44
root@ab488d178286:/# hugo version
Hugo Static Site Generator v0.42.1 linux/amd64 BuildDate: 2018-06-13T13:44:44Z
root@ab488d178286:/# node --version
v10.5.0
root@ab488d178286:/# npm --version
6.1.0
root@ab488d178286:/# gulp --version
[09:50:14] CLI version 3.9.1
```

## Sample bitbucket-pipelines.yml

```yaml
image: abelperezok/docker-pipelines-hugo:latest

pipelines:
  default:
    - step:
        script:
          - cd site/src
          - npm i
          - gulp
          - cd ..
          - hugo -D
          - aws s3 sync public s3://your-bucket-name-here --delete
```

## Updating the image

Working on repository root directory

```docker build -t abelperezok/docker-pipelines-hugo .```

```docker push abelperezok/docker-pipelines-hugo:latest```

## MIT License

Copyright 2018 Abel Perez

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
