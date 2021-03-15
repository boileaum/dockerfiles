FROM node:latest

# LABEL about the custom image
LABEL maintainer="matthieu.boileau@math.unistra.fr"
LABEL description="A custom Docker Image for https://github.com/rolanddenis/bbb-recorder"

# Create app directory
WORKDIR /root

#Update Software Repository
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app && \
    curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add && \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -y update && \
    apt-get -y install google-chrome-stable software-properties-common && \
    add-apt-repository ppa:jonathonf/ffmpeg-4 && \
    apt-get -y install ffmpeg xvfb

RUN git clone https://github.com/rolanddenis/bbb-recorder && \
    cd bbb-recorder && \
    npm install --ignore-scripts && \
    cp .env.example .env

WORKDIR /root/bbb-recorder
ENTRYPOINT ["node", "export.js"]
