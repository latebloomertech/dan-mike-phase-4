import React from 'react';
import Ingredients from "./Ingredients"


function Main({ ingredients }) {


function handleIngredientClick() {

}

    return (
    <div className="Main">
        <h1 className="main-title">Let's Get Baking!</h1>
        <h2 className="main-subtitle">Recipes inspired by your pantry</h2>
        <Ingredients ingredients={ingredients} handleIngredientClick={handleIngredientClick}/>
    </div>
  )
}

export default Main;