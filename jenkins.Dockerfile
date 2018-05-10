FROM jenkins/jenkins

# USER root

# RUN mkdir -p /tank/android-sdk
# RUN chmod 777 -R /tank/android-sdk
# RUN mkdir -p /tank/repos

# RUN mkdir -p /tank/.android/
# RUN touch /tank/.android/repositories.cfg
# RUN chmod 777 -R /tank/.android

# RUN useradd -G jenkins tank -d /tank -G sudo

# USER tank
# WORKDIR /tank

# RUN mkdir -p ~/.android/
# RUN touch ~/.android/repositories.cfg
# RUN chmod 777 -R ~/.android
ENV ANDROID_HOME /tank/android-sdk
ENV PATH ${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH
COPY bootstrap.sh /var/jenkins_home/bootstrap.sh
# RUN wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -P ${ANDROID_HOME} && \
#  unzip ${ANDROID_HOME}/sdk-tools-linux-3859397 -d ${ANDROID_HOME}

# RUN yes | ${ANDROID_HOME}/tools/bin/sdkmanager --licenses
# RUN $ANDROID_HOME/tools/bin/sdkmanager "platforms;android-27" "platforms;android-26" "platforms;android-25"
# RUN $ANDROID_HOME/tools/bin/sdkmanager "extras;android;m2repository" "extras;google;m2repository"
# RUN $ANDROID_HOME/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2"
# RUN $ANDROID_HOME/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2"

