import React from 'react'
import IngredientList from "./IngredientList"

function Ingredients({ingredients, handleIngredientClick}) {

  return (
    <div className='ingredient-container'>
      <h2 className='ingredient-prompt'>Whatcha Got?</h2>
      <p>Select an item from your pantry</p>
      <div>
      {ingredients.map(item => <IngredientList key={item.id} ingredient={item} handleIngredientClick={handleIngredientClick}/>)}
      </div>
    </div>
  )
}

export default Ingredients