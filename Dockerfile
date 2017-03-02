FROM maven:3.3-jdk-8

#ADD . /rabbit-lab
RUN mkdir /rabbit-lab

# Default dir
WORKDIR /rabbit-lab
