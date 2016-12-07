FROM openjdk:8-jdk

# Installs i386 architecture for 32 bit Android tools
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
        expect \
        lib32z1 \
        libc6:i386 \
        libncurses5:i386 \
        libstdc++6:i386 \
        tar \
        unzip \
        wget && \
    rm -rf /var/lib/apt/lists/*

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

ENV ANDROID_SDK_VERSION r24.4.1
RUN wget -q -O android-sdk.tgz http://dl.google.com/android/android-sdk_${ANDROID_SDK_VERSION}-linux.tgz && \
    tar -xaf android-sdk.tgz -C /opt && rm android-sdk.tgz
