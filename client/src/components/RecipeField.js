import React from "react";
import RecipeCard from "./RecipeCard";

function RecipeField({recipes, showList, showRecipeClick}) {

    return (

      <div id = "recipe-field">

      <ul className="cards">
      {recipes = showList.map((recipe) =>(
            <RecipeCard className="recipecards"
            key={recipe.id}
            recipe={recipe}
            showRecipeClick={showRecipeClick}
            />
        ))}

      </ul>
      </div>

    );
}

export default RecipeField