import React, {useState} from 'react'

function IngredientList({ingredient, handleIngredientClick}) {

  return (
    <div>
      <input onClick={handleIngredientClick}
        type="radio"
        id="testID"
        name="testName"
        value={ingredient.id} />
        <label>{ingredient.name}</label>
    </div>
  )
}

export default IngredientList
