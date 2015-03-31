FROM octoblu/ubuntu-12.04-32bit-node

RUN npm cache clean
RUN npm install -g node-pre-compile-to-s3

CMD ["sh", "-c", "node-pre-compile-to-s3 ${NPM_PACKAGE_NAME}"]
