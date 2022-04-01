import React, { useState } from "react";

function LoginForm({ onLogin }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");


  function handleSubmit(e) {
    e.preventDefault();
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    })
      .then((r) => r.json())
      .then((user) => onLogin(user));
  }

  return (
    <form onSubmit={handleSubmit}>
        <label className="login-labels" htmlFor="username">Username:  </label>
        <input className="input-form"
          type="text"
          id="username"
          autoComplete="off"
          value={username}
          onChange={(e) => setUsername(e.target.value)} />

        <label className="login-labels" htmlFor="password">Password: </label>
        <input className="input-form"
          type="password"
          id="password"
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)} />
          <button className="button-test" type="submit">Login</button>
    </form>
  );
}

export default LoginForm;
