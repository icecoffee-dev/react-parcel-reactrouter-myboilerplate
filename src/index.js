<<<<<<< HEAD
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

=======
import React from "react";
import ReactDOM from "react-dom";
import Counter from "./Components/Counter";
ReactDOM.render(
  <React.StrictMode>
    <Counter />
  </React.StrictMode>,
  document.getElementById("root")
);
>>>>>>> 1de39c9 (updated boiler plate , some other fixes and removed react router)
