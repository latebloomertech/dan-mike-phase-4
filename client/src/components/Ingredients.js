import React from 'react'
import IngredientList from "./IngredientList"

function Ingredients({ingredients, handleIngredientClick}) {

  return (
    <div className='ingredient-container'>
      <h3 className='ingredient-prompt'>Whatcha Got?</h3>
      <div>
      {ingredients.map(item => <IngredientList key={item.id} ingredient={item} handleIngredientClick={handleIngredientClick}/>)}
      </div>
    </div>
  )
}

export default Ingredients