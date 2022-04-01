import React from "react";
import RecipeCard from "./RecipeCard";

function RecipeField({recipes, showList, showRecipeClick, user , userRecipes}) {

console.log(userRecipes)
    return (

      <div id = "recipe-field">
        <h1 className="recipe-title">Our Favorite Recipes</h1>
      <ul className="cards">
      {recipes = showList.map((recipe) =>(

            <RecipeCard className="recipecards"
            key={recipe.id}
            recipe={recipe}
            showRecipeClick={showRecipeClick}
            user={user}
            userRecipes={userRecipes}/>
        ))}
      </ul>
      </div>

    );
}

export default RecipeField