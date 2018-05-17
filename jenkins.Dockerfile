FROM jenkins/jenkins:2.122

ENV ANDROID_HOME /tank/android-sdk
ENV PATH ${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH
COPY bootstrap.sh /var/jenkins_home/bootstrap.sh

