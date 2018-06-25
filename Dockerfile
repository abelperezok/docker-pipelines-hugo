FROM debian:buster-slim
LABEL maintainer="Abel Perez <abelperezok@gmail.com>"

# Install system updates
RUN apt-get update -y
RUN apt-get upgrade -y

# Install curl Python 2.7 and PIP
RUN apt-get install curl -y
RUN apt-get install python -y
RUN apt-get install python-pip -y
RUN pip install --upgrade pip

# Install AWS CLI 
RUN pip2 install -U awscli

# Install Hugo
RUN apt-get install hugo -y

# Install Node & NPM
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Install Gulp
RUN npm i -g gulp
