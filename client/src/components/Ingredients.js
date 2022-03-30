import React from 'react'
import IngredientList from "./IngredientList"

function Ingredients({ingredients, handleIngredientClick, handleShowAll}) {

  return (
    <div>
      <h3 className='ingredient-prompt'>Whatcha Got?</h3>
      <div className='ingredient-container'>
      <div>
      <input onClick={handleShowAll}
        type="radio"
        id="testID"
        name="testName"
        value="test" />
        <label>Show All Recipes</label>
    </div>
    <br></br>
      {ingredients.map(item => <IngredientList key={item.id} ingredient={item} handleIngredientClick={handleIngredientClick}/>)}
      </div>
    </div>
  )
}

export default Ingredients