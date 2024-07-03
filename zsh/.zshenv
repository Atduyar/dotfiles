. "$HOME/.cargo/env"

# bun completions
[ -s "/home/atduyar/.bun/_bun" ] && source "/home/atduyar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added for go
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# Gradle and Java path
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
# export JAVA_HOME=/opt/java/jdk-21
export GRADLE_HOME=/opt/gradle/gradle-8.6
export ANT_HOME=/opt/ant/apache-ant-1.10.14
export ANDROID_HOME="/opt/android_sdk/"
export ANDROID_SDK_ROOT="/opt/android_sdk/"
export CHROME_EXECUTABLE="/usr/bin/brave-browser"
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
export PATH=${ANT_HOME}/bin:${PATH}
export PATH=${GRADLE_HOME}/bin:${PATH}
export PATH="$PATH:/opt/flutter/bin"

# Added for dotnet
export PATH="$PATH:$HOME/.dotnet/tools/"
