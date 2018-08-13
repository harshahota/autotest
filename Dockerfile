FROM webnicer/protractor-headless

RUN google-chrome --version

RUN    apt-get update && apt-get -y install libxss1 libappindicator1 libindicator7 libappindicator3-1 lsb-core
RUN    curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN    dpkg -i ./google-chrome*.deb
RUN    apt-get install -yf
