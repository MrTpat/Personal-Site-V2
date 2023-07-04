FROM node:16

EXPOSE 9000

SHELL ["/bin/bash", "--login", "-c"]
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  git \
  ca-certificates \
  inotify-tools \
  lmodern \
  make \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-fonts-extra \
  texlive-lang-english \
  texlive-lang-portuguese \
  texlive-xetex && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . .
RUN cd static/Awesome-CV && make clean && make resume.pdf
RUN cd ../..
RUN npm install -g gatsby-cli
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN nvm install
RUN yarn
RUN npm run build
ENTRYPOINT ["npm", "run", "serve"]
