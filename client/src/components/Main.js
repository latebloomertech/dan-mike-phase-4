import React from 'react';
import Ingredients from "./Ingredients"
import RecipeField from "./RecipeField"


function Main({ ingredients, recipes }) {


function handleIngredientClick() {

}

    return (
    <div className="Main">
        <h1 className="main-title">Let's Get Baking!</h1>
        <h2 className="main-subtitle">Recipes inspired by your pantry</h2>
       {/*  <Ingredients ingredients={ingredients} handleIngredientClick={handleIngredientClick}/> */}
        <RecipeField recipes={recipes}/>
    </div>
  )
}

export default Main;