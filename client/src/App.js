import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Main from "./components/Main";

function App() {
  const [recipes, setRecipes] = useState([])
  const [ingredients, setIngredients] = useState([])

useEffect(async () => {
  const response = await fetch("/ingredients")
  const data = await response.json()
  setIngredients(data)

  const recipeResponse = await fetch("/recipes")
  const recipeData = await recipeResponse.json()
  setRecipes(recipeData)
}, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route path="/">
            <Main ingredients={ingredients} recipes={recipes}/>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}
export default App;