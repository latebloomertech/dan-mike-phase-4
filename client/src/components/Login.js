import { useState } from "react";
import LoginForm from "../components/LoginForm";


function Login({ onLogin }) {
  const [showLogin, setShowLogin] = useState(true);

  return (
    <div>
          <LoginForm onLogin={onLogin} />
          <p>
            <button color="secondary" onClick={() => setShowLogin(true)}>
              Log In
            </button>
          </p>
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

