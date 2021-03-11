ARG VARIANT=14
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:0-${VARIANT}
WORKDIR /usr/src/app

RUN npm install -g serve

COPY build .

EXPOSE 3000

CMD serve -s . -l 3000