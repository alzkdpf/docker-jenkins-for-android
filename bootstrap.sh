#!/bin/bash

mkdir -p ~/.android/
touch ~/.android/repositories.cfg
chmod 777 -R ~/.android

if [ ! -d /tank/android-sdk ]; then
    mkdir -p /tank/android-sdk
    chmod 777 -R /tank/android-sdk
    mkdir -p /tank/repos

    wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -P ${ANDROID_HOME} && \
    unzip ${ANDROID_HOME}/sdk-tools-linux-3859397 -d ${ANDROID_HOME}

    yes | ${ANDROID_HOME}/tools/bin/sdkmanager --licenses && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "platforms;android-27" "platforms;android-26" "platforms;android-25" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "extras;android;m2repository" "extras;google;m2repository" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2"
fi
