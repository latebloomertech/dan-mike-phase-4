import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route, } from "react-router-dom";
import Main from "./components/Main";
import Header from "./components/Header";
import Favorites from "./components/Favorites";
import RecipePage from "./components/RecipePage";

function App() {
  const [recipes, setRecipes] = useState([])
  const [ingredients, setIngredients] = useState([])
  const [recipeDetail, setRecipeDetail] = useState([])


useEffect(async () => {
  const response = await fetch("/ingredients")
  const data = await response.json()
  setIngredients(data)

  const recipeResponse = await fetch("/recipes")
  const recipeData = await recipeResponse.json()
  setRecipes(recipeData)
}, []);

function showRecipeClick(e) {
 console.log(e)
  fetch(`/recipes/${e}`)
 .then((res) =>res.json())
 .then((data) => {
  setRecipeDetail(data)
  })

}
console.log(recipeDetail)

return (
    <BrowserRouter>
      <div className="App">
        <Header />
        <Switch>
          <Route exact path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route exact path="/">
            <Main ingredients={ingredients} recipes={recipes} showRecipeClick={showRecipeClick}/>
          </Route>
          <Route exact path="/favorites">
           <Favorites />
          </Route>
          <Route path="/recipepage">
           <RecipePage recipeDetail={recipeDetail}/>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}
export default App;