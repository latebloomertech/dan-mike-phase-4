import React from "react";

function RecipeCard ({recipe}) {
   
   
return (
    <div className="card">
        <h4>{recipe.name}</h4>
        <p>{recipe.description}</p>
        <p className="instructions-link">
            <a href="#">Baking Instructions</a>
        </p>
    </div>
);
}

export default RecipeCard