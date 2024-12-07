# Use Gitpod full workspace image
FROM gitpod/workspace-full

# Install Chromium and ChromeDriver via apt-get
RUN sudo apt-get update && \
    sudo apt-get install -y chromium-browser chromium-chromedriver
