import React, { useState } from "react";

function SignUpForm({ onLogin }) {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [passwordConfirmation, setPasswordConfirmation] = useState("");
    const [errors, setErrors] = useState([]);
    const [isLoading, setIsLoading] = useState(false);

    function handleSubmit(e) {
      e.preventDefault();
      setErrors([]);
      setIsLoading(true);
      fetch("/signup", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          username,
          password,
          password_confirmation: passwordConfirmation,
        }),
      }).then((r) => {
        setIsLoading(false);
        if (r.ok) {
          r.json().then((user) => onLogin(user));
        } else {
          r.json().then((err) => setErrors(err.errors));
        }
      });
    }

    return (
      <form onSubmit={handleSubmit}>
           <label className="login-labels" htmlFor="username">Username:   </label>
          <input className="input-form"
            type="te xt"
            id="username"
            autoComplete="off"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
          />

          <label className="login-labels" htmlFor="password">Password:  </label>
          <input className="input-form"
            type="password"
            id="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            autoComplete="current-password"
          />

          <label className="login-labels" htmlFor="password">Password Confirmation:  </label>
          <input className="input-form"
            type="password"
            id="password_confirmation"
            value={passwordConfirmation}
            onChange={(e) => setPasswordConfirmation(e.target.value)}
            autoComplete="current-password"
          />

          <button className="button-test" type="submit">{isLoading ? "Loading..." : "Sign Up"}</button>

          {errors.map((err) => (
            <error key={err}>{err}</error>
          ))}
      </form>
    );
  }

  export default SignUpForm;
