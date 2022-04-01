import React from "react";
import { Link } from "react-router-dom"
function RecipeCard({ recipe, showRecipeClick, user, userRecipes }) {

  function handleSubmit(e) {
    // e.preventDefault()

    const newUserRecipe = {
      "user_id": user.id,
      "recipe_id": recipe.id
    }
    fetch("/user_recipes", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newUserRecipe),
    })
      .then((r) => r.json())
      .then((data) => console.log(data));
  }

  function handleRemoveFavorite(e) {
    // e.preventDefault()
    const removedUserRecipe = {
      "user_id": user.id,
      "recipe_id": recipe.id
    }
    fetch("/user_recipes/remove_by_recipe_id", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(removedUserRecipe),
    })
  }

  function isFavorited() {
    if (user && userRecipes.length>0) {
      return (userRecipes.filter(r => r.id === recipe.id).length > 0)
    } else {
      return false
    }
  }

  let favoritingOption
  if (user) {
    if (isFavorited()) {
      favoritingOption = <>
        <button
          onClick={(e) => handleRemoveFavorite(e.target.value)}
          value={recipe.id}>Remove Favorite
        </button>
      </>
    } else {
      favoritingOption = <Link to={`/favorites`}>
        <button
          className="favButton"
          onClick={(e) => handleSubmit(e.target.value)}
          value={recipe.id}>Favorite
        </button>
      </Link>
    }
  } else {
    favoritingOption = <></>
  }

  return (
    <div className="card">
      <h4>{recipe.name}</h4>
      <p>{recipe.description}</p>

      <Link to={`/recipepage`}>
        <button
          onClick={(e) => showRecipeClick(e.target.value)}
          value={recipe.id}>Baking Instructions
        </button>
      </Link>
      {favoritingOption}
    </div>
  );
}

export default RecipeCard