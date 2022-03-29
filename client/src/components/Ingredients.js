import React from 'react'
import IngredientList from "./IngredientList"

function Ingredients({ingredients, handleIngredientClick}) {

  return (
    <div>
      <h3 className='ingredient-prompt'>Whatcha Got?</h3>
      <div className='ingredient-container'>
      {ingredients.map(item => <IngredientList key={item.id} ingredient={item} handleIngredientClick={handleIngredientClick}/>)}
      </div>
    </div>
  )
}

export default Ingredients