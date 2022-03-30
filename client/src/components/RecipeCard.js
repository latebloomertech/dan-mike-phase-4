import React from "react";
import {Link} from "react-router-dom"

function RecipeCard ({recipe, showRecipeClick}) {


return (
    <div className="card">
        <h4>{recipe.name}</h4>
        <p>{recipe.description}</p>
        {/* <p className="instructions-link">
            <a href="#">Baking Instructions</a>
        </p> */}
        <Link to={`/recipepage`}>
        <button
        onClick={(e) => showRecipeClick(e.target.value)}
        value={recipe.id}>Baking Instructions
        </button>
        </Link>
    </div>
);
}

export default RecipeCard