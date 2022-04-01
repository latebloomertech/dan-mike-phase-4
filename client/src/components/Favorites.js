import React from 'react'
import { useState, useEffect } from "react";
import RecipeCard from './RecipeCard'


function Favorites(user, isLoggedIn) {

  const [userRecipes, setUserRecipes] = useState([])

  useEffect(async () => {

    if (user) {
      const userRecipesResponse = await fetch("/me/recipes")
      const userRecipesData = await userRecipesResponse.json()
      setUserRecipes(userRecipesData)
    }
  },[])

  return (
    <div>
      <h1>Favorites</h1>
      {isLoggedIn ?
        (<ul className="cards">
          {userRecipes.map((recipe) => (
            <RecipeCard className="recipecards"
              key={recipe.id}
              recipe={recipe}
              // showRecipeClick={showRecipeClick}
              userRecipes={userRecipes}
              user={user}
            />
          ))}
        </ul>) :
        (<p>RUH ROH! Login to see your favorites.</p>)
      }
    </div>
  )
}

export default Favorites