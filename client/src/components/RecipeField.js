import React from "react";
import RecipeCard from "./RecipeCard";

function RecipeField({recipes}) {
    console.log(recipes)
    return (

      <div id = "recipe-field">
      <ul className="cards">
        {recipes = recipes.map((recipe) =>(
            <RecipeCard className="recipecards"
            key={recipe.id}
            recipe={recipe}
            />
        ))}
      </ul>
      </div>
  
    );
}

export default RecipeField