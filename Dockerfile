FROM node:14-alpine

WORKDIR /app

ENV MOUNTEBANK_VERSION=2.7.0

RUN npm install -g mountebank@${MOUNTEBANK_VERSION} --production \
 && npm cache clean --force 2>/dev/null \
 && rm -rf /tmp/npm*

ADD imposters /app

EXPOSE 2525

VOLUME [ "/data" ]

CMD ["mb", "--configfile", "default-imposters.json", "--allowInjection", "--datadir", "/data/.mbdb"]
