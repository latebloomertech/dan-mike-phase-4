import './App.css';
import { useState, useEffect } from "react";

import { BrowserRouter, Switch, Route } from "react-router-dom";



function App() {
  const [count, setCount] = useState(0);
  const [recipes, setRecipes] = useState()

useEffect(() => {
  fetch("/hello")
    .then((r) => r.json())
    .then((data) => setCount(data.count));
}, []);

useEffect(() => {
  fetch("/recipes")
    .then((r) => r.json())
    .then((d) => setRecipes(d.recipes));
}, []);


  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route path="/">
            <h1>Page Count: {count}</h1>
            <h2>Adding Test</h2>
            <p>{recipes}</p>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>

  );
}

export default App;
