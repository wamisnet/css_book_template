FROM node:12.16.0
RUN apt update \
  && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && apt install -y ./google-chrome-stable_current_amd64.deb \
  && apt clean \
  && rm google-chrome-stable_current_amd64.deb
