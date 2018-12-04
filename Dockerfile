FROM node:10-alpine
ARG USER="front"
ARG UID="2000"
ARG GROUP="front"
ARG GID="2000"
ARG WORKSPACE=/home/xtreme_frontend
ENV LANG C.UTF-8

RUN mkdir -p $WORKSPACE
WORKDIR $WORKSPACE

# Set environment variables
ENV NODE_ENV development
ENV HOST 0.0.0.0
EXPOSE 3000

RUN apk --update add shadow &&\
    rm -rf /var/cache/apk/* &&\
    useradd --user-group --create-home --shell /bin/false xtreme_frontend

COPY / ./

RUN chown -R xtreme_frontend:app $WORKSPACE

RUN yarn global add vue-cli
RUN yarn install

CMD ["yarn", "dev"]
