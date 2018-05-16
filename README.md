# Pipelines Hugo

This repository has been forked from [this github repo](https://github.com/karelbemelmans/docker-pipelines-hugo) it uses currently Hugo version 0.40.3 

This is a Docker image that contains Hugo, the static website generator and the aws-cli Python scripts.
It can be used to deploy Hugo site to AWS S3 using Atlassian Bitbucket Pipelines.

Includes:
* Python v2.7.14
* AWS CLI v1.15.19
* Hugo v0.40.3

Check the original author's post [here](https://www.karelbemelmans.com/2016/10/deploying-a-hugo-website-to-amazon-s3-using-bitbucket-pipelines/) for more information about how to use this Docker image for your Pipelines setup.

## Added Node, NPM and Gulp 
Latest version also includes:
* Node v6.10.3
* NPM v3.10.10
* Gulp v3.9.1

## Updating the image

Working on repository root directory

```docker build -t abelperezok/docker-pipelines-hugo .```

```docker push abelperezok/docker-pipelines-hugo:latest```

## MIT License

Copyright 2018 Abel Perez

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
