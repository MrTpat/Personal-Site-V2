FROM node:16.0.0

EXPOSE 9000

ARG CI
ARG GITHUB_HEAD_REF
ARG DEV_SITE_URL
ARG PROD_SITE_URL
ARG NETLIFY_DEPLOY_KEY

ENV CI=$CI
ENV GITHUB_HEAD_REF=$GITHUB_HEAD_REF
ENV DEV_SITE_URL=$DEV_SITE_URL
ENV PROD_SITE_URL=$PROD_SITE_URL
ENV NETLIFY_DEPLOY_KEY=$NETLIFY_DEPLOY_KEY

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
  zip \
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
RUN zip -r public public
RUN ./deploy-to-netlify.sh
ENTRYPOINT ["npm", "run", "serve"]
