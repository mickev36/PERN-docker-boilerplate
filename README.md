# PERN stack boilerplate

Template project for fullstack JS development.

## What's included

-   Fully dockerized application (docker-compose starts all necessary services)
-   Node.js/Typescript webserver, Auto-restarts on error using nodemon.
-   React front-end
-   Postgres database
-   VSCode is running inside docker
-   Prettier, eslint + vscode extensions
-   Hot reload in development
-   DB administration tool (Adminer), exposed on port 8080

For windows users, it is advised to use WSL2.

## DEV - Get started

### Dependencies

-   Docker
-   Docker Compose
-   VSCode

### Installation instructions

Open up VSCode at the root of the repository. A pop-up should prompt the user to open VSCode in a container.

Docker-compose will automatically start two containers : the vscode+app container(containing both the front and back-end apps for development convenience) and "db", with the sql database.

Attach a terminal to the running vscode container (+ in the terminal view at the bottom right) Then run :

```
npm install
```

```
cd server; npm run start
```

```
cd client; npm run start
```

## PROD

### Dependencies

-   Docker
-   Docker Compose

### Installation instructions

Build the prod package :
`npm run build.prod`

Unzip the package on the server, then run :
`npm run start.prod`

## TODO

-   1 - Backup/restore DB script
-   2 - Package server dependencies in production, instead of installing them on the fly
-   3 - "Eject" mode, without VSCode
-   4 - Setup back-end Tests with Jest
-   5 - Check-up on Typescript rules
