FROM gitpod/workspace-full:latest

USER gitpod

# Install Java and Maven
RUN sudo apt update && sudo apt install -y openjdk-17-jdk maven

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"
