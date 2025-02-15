#!/bin/sh 

cd extension; npm install --legacy-peer-deps; npm run build; cd ..

if [ ! -e extension/build/app.js ]; then
   echo "Extension build has failed!"
   exit
fi

echo "Configuring backend..."
cd backend; npm install; 

echo "Now you should execute:"
echo "npm run watch"
echo "and load in your browser as developer mode, the extension from './extension/build' folder"
echo "know more at https://libre.events/development"
