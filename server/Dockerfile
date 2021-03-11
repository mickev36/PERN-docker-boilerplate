ARG VARIANT=14
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:0-${VARIANT}
WORKDIR /usr/src/app
# INSTALL DEPS
RUN npm install -g typescript

# INSTALL SERVER DEPENDENCIES
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]]
RUN npm install --production

# COPY SRC
COPY dist .

EXPOSE 8000
CMD npm run start.prod