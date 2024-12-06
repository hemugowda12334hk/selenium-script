FROM gitpod/workspace-full
 
# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && sudo dpkg -i google-chrome-stable_current_amd64.deb \
    && sudo apt-get -fy install
 
# Install ChromeDriver
RUN wget https://chromedriver.storage.googleapis.com/$(wget -qO- https://chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip \
&& unzip chromedriver_linux64.zip \
    && sudo mv chromedriver /usr/bin/
