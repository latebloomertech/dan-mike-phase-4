import React from "react";
import {Link} from "react-router-dom"
function RecipeCard ({recipe, showRecipeClick, user}) {

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

    <Link to={`/favorites`}>
      <button
      className="favButton"
       onClick={(e) => handleSubmit(e.target.value)}
       value={recipe.id}>Favorite
      </button>
      </Link>
    </div>
);
}

export default RecipeCard