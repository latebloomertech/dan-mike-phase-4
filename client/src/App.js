import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route, } from "react-router-dom";
import Main from "./components/Main";
import Header from "./components/Header";
import Favorites from "./components/Favorites";
import RecipePage from "./components/RecipePage";
import Login from "./components/Login";
import NavBar from "./components/NavBar";

function App() {
  const [recipes, setRecipes] = useState([])
  const [ingredients, setIngredients] = useState([])
  const [recipeDetail, setRecipeDetail] = useState([])
  const [user, setUser] = useState(null)
  const [showList, setShowList] = useState([])


useEffect(async () => {

  fetch("/me").then((r) => {
    if (r.ok) {
      r.json().then((user) => setUser(user));
    }
  });

  const response = await fetch("/ingredients")
  const data = await response.json()
  setIngredients(data)

  const recipeResponse = await fetch("/recipes")
  const recipeData = await recipeResponse.json()
  setRecipes(recipeData)
  setShowList(recipeData)

}, []);


function showRecipeClick(e) {
 console.log(e)
  fetch(`/recipes/${e}`)
 .then((res) =>res.json())
 .then((data) => setRecipeDetail(data))
}

return (
    <BrowserRouter>
      <div className="App">
      <Login onLogin={setUser} />
       <NavBar user={user} setUser={setUser} />
        <Header />
        <Switch>
          <Route exact path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route exact path="/">
            <Main ingredients={ingredients} recipes={recipes} showRecipeClick={showRecipeClick} showList={showList} setShowList={setShowList}/>
          </Route>
          <Route exact path="/favorites">
           <Favorites user={user} />
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