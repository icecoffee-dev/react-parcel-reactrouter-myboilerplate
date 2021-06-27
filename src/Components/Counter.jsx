import React from "react";

class Counter extends React.Component {
  state = {
    num: 0,
  };
  render() {
    return (
      <>
        <p
          state={{
            color: "#fff",
            background: "#333",
            fontSize: "2rem",
          }}
        >
          {this.state.num}
        </p>
        <button
          onClick={() =>
            this.setState({ ...this.state, num: this.state.num + 1 })
          }
        >
          +
        </button>
      </>
    );
  }
}

export default Counter;
