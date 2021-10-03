FROM node

# you wanna change this
ENV PROJECT=eleventy-skeleton
ENV APP_PATH=/opt/${PROJECT}

WORKDIR ${APP_PATH}

COPY docker-config/bashrc /root/.bashrc
COPY ./ ${APP_PATH}

RUN npm install
