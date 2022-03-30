import React from "react";
import RecipeCard from "./RecipeCard";

function RecipeField({recipes, showList}) {
    console.log(showList)
  
    return (

      <div id = "recipe-field">

      <ul className="cards">
      {recipes = showList.map((recipe) =>(
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