# Use Gitpod's full workspace image as the base
FROM gitpod/workspace-full:latest

USER gitpod

# Install Java 17 and Maven
RUN sudo apt update && sudo apt install -y openjdk-17-jdk maven

# Install Chrome and ChromeDriver for Selenium
RUN sudo apt install -y chromium-browser chromium-chromedriver

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"
