import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route, } from "react-router-dom";
import Main from "./components/Main";
import Header from "./components/Header";
import Favorites from "./components/Favorites";
import RecipePage from "./components/RecipePage";
import NavBar from "./components/NavBar";

function App() {
  const [recipes, setRecipes] = useState([])
  const [ingredients, setIngredients] = useState([])
  const [recipeDetail, setRecipeDetail] = useState([])
  const [user, setUser] = useState(null)
  const [showList, setShowList] = useState([])
  const [userRecipes, setUserRecipes] = useState([])
  const [isLoggedIn, setIsLoggedIn] = useState(false)


useEffect(async () => {

    const userResponse = await fetch("/me")
    const userData = await userResponse.json()
    if (userResponse.ok) {
      console.log(`user data ${userData}`)
      setUser(userData)
    }

    const response = await fetch("/ingredients")
    const data = await response.json()
    setIngredients(data)


    const recipeResponse = await fetch("/recipes")
    const recipeData = await recipeResponse.json()
    setRecipes(recipeData)
    setShowList(recipeData)

    if (userData) {

      const userRecipesResponse = await fetch("/me/recipes")
      const userRecipesData = await userRecipesResponse.json()
      setUserRecipes(userRecipesData)
    }




    // const userRecipesResponse = await fetch("/me/recipes")
    // const userRecipesData = await userRecipesResponse.json()
    // setUserRecipes(userRecipesData)

  // console.log(userRecipes)

  // fetch("/me/recipes")
  // .then((r) => r.json())
  // .then((data) => setUserRecipes(data))
  // .then(console.log(userRecipes))

}, []);

// console.log(userRecipes)

function showRecipeClick(e) {
 console.log(e)
  fetch(`/recipes/${e}`)
 .then((res) =>res.json())
 .then((data) => setRecipeDetail(data))
}

async function onLogin(user) {
  setUser(user)
  setIsLoggedIn(true)
  const userRecipesResponse = await fetch("/me/recipes")
  const userRecipesData = await userRecipesResponse.json()
  setUserRecipes(userRecipesData)
}

function handleLogoutClick() {
  fetch("/logout", { method: "DELETE" }).then((r) => {
    if (r.ok) {
      setUser(null);
      setIsLoggedIn(false);
    }
  });
}

return (
    <BrowserRouter>
      <div className="App">
      <NavBar user={user} setUser={setUser} onLogin={onLogin} handleLogoutClick={handleLogoutClick}/>
      <Header />
      <Switch>
        <Route exact path="/testing">
          <h1>Test Route</h1>
        </Route>
        <Route exact path="/">
          <Main user={user} ingredients={ingredients} recipes={recipes} showRecipeClick={showRecipeClick} showList={showList} setShowList={setShowList} userRecipes={userRecipes}/>
        </Route>
        <Route exact path="/favorites">
          <Favorites user={user} isLoggedIn={isLoggedIn}
          // userRecipes={userRecipes}
          />
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