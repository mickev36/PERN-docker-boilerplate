#!/bin/bash
cd client
npm run build
cd ../server
tsc
cd ..

# Package output files
rm -rf ./dist
mkdir dist
tar -cvzf dist/BUILD.zip .env package.json package-lock.json server/dist server/package.json server/Dockerfile client/Dockerfile client/build Dockerfile docker-compose.yml scripts/run_server_client.sh 

# Cleanup intermediate files
rm -rf ./server/dist
rm -rf client/build

