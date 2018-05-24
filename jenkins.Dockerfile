FROM jenkins/jenkins:2.124

ENV ANDROID_HOME /tank/android-sdk
ENV PATH ${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH

COPY bootstrap.sh /usr/bin/bootstrap.sh

USER root

# install package
RUN apt-get update && apt-get install -y apt-utils sudo
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

USER jenkins