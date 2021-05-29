// import React from "react";
import ReactDOM from "react-dom";
import { StrictMode } from "react";
import { BrowserRouter as Router, Route, Switch, Link } from "react-router-dom";
import App from './App';

ReactDOM.render(
  <StrictMode>
    <App />
  </StrictMode>,
  document.querySelector("#root")
);

