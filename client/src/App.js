import logo from './logo.svg';
import './App.css';
import { useState, useEffect } from "react";
import Ingredients from "./components/Ingredients";
import Main from "./components/Main";
import NavBar from "./components/NavBar";
import RecipeField from "./components/RecipeField"




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
    <div className="App">
      <h1>Page Count: {count}</h1>
      <h2>Adding Test</h2>
      <p>{recipes}</p>
    </div>
  );
}

export default App;
