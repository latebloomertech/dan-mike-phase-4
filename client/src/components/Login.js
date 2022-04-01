import { useState } from "react";
import LoginForm from "./LoginForm";
import SignUpForm from "./SignUpForm";


function Login({ onLogin, user }) {
  const [showLogin, setShowLogin] = useState(true);

  return (
    <div className="form-container">
      {showLogin ? (
        <>
          <LoginForm onLogin={onLogin} />
          <p className="login-labels">
            Don't have an account? &nbsp;
            <button className="button-test" onClick={() => setShowLogin(false)}>
              Sign Up
            </button>
          </p>
          </>
      ) : (
        <>
        <SignUpForm onLogin={onLogin} />
        <p className="login-labels">
            Already have an account? &nbsp;
            <button color="secondary" className="button-test" onClick={() => setShowLogin(true)}>
              Log In
            </button>
          </p>
        </>
      )}
    </div>
  );
}
export default Login;


  // function handleSubmit(e) {
  //   e.preventDefault();
  //   fetch("/login", {
  //     method: "POST",
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //     body: JSON.stringify({ username }),
  //   })
  //   .then((r) => r.json())
  //   .then((user) => onLogin(user));

    // .then((r) => {
    //   if (r.ok) {
    //     r.json().then((user) => onLogin(user));
    //   }
    // });
//   }

//   return (
//     <div className="login-form">
//     <form onSubmit={handleSubmit}>

//       <label htmlFor="username"> </label>
//       <input
//         type="text"
//         id="username"
//         value={username}
//         onChange={(e) => setUsername(e.target.value)}
//       />
//       <button type="submit">Login</button>
//     </form>
//     </div>
//   );
// }

