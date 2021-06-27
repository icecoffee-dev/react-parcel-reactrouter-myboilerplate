# React-parcel my boilerplate

## Automate the process

Just clone the git repo and run `bash steps.sh` to reproduce all the steps.

Actions: 
make an app folder in the current folder, initialize it and performs all the steps as mentioned in [`Steps`](#steps) below

```bash
bash steps.sh
```

## Steps:

1. make and initialize folder `yarn init -y`
2. add parcel `yarn add --dev parcel@next`
3. add react and react-dom `npm install react react-dom`
4. make source directory `mkdir src`
5. make `index.html` and `index.js` inside `src/`
6. add `eslint` and `prettier` support

```bash
npx eslint --init
npm install --save-dev --save-exact prettier
```

7. add `scrips` in `package.json`

```json
 "scripts": {
    "start": "parcel ./src/index.html --open",
    "format": "npx prettier --write src/.",
    "lint": "eslint \"src/**/*.{js, jsx}\" --quiet",
    "dev": "parcel src/index.html",
    "build": "parcel build src/index.html"
  },
```

7. make `prettierrc` file as `echo {}> .prettierrc.json`
8. Add content in `index.html` and `index.js` file.

```html
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
```

```js
import React from "react";
import ReactDOM from "react-dom";

ReactDOM.render(
  <React.StrictMode>
    <h1>Hi</h1>
  </React.StrictMode>,
  document.getElementById("root")
);
```
