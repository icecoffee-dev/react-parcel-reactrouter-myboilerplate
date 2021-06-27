mkdir './app'
cd './app'
yarn init -y
yarn add --dev parcel@next
npm install react react-dom
mkdir './src'
touch './src/index.html' './src/index.js'
echo '
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Parcel | App</title>
  </head>
  <body>
    <div id="root"></div>
    <script src="./index.js"></script>
  </body>
</html>
' > ./src/index.html

echo '
import React from "react";
import ReactDOM from "react-dom";

ReactDOM.render(
  <React.StrictMode>
    <h1>Hi</h1>
  </React.StrictMode>,
  document.getElementById("root")
);
' > ./src/index.js

echo {}> .prettierrc.json
npx eslint --init
npm install --save-dev --save-exact prettier
echo '
{
  "name": "app",
  "version": "1.0.0",
  "main": "index.js",
  "license": "MIT",
  "scripts": {
    "start": "parcel ./src/index.html --open",
    "format": "npx prettier --write src/.",
    "lint": "eslint \"src/**/*.{js, jsx}\" --quiet",
    "dev": "parcel ./src/index.html --open",
    "build": "parcel build src/index.html"
  },
  "devDependencies": {
    "eslint": "^7.29.0",
    "eslint-plugin-react": "^7.24.0",
    "parcel": "^2.0.0-beta.3.1",
    "prettier": "2.3.2"
  },
  "dependencies": {
    "react": "^17.0.2",
    "react-dom": "^17.0.2"
  }
}
' > ./package.json

npm outdated
npm update

clear
npm run dev
