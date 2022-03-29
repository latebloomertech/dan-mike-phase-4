import React, {useState} from 'react'

function IngredientList({ingredient, handleIngredientClick}) {
  const [checked, setChecked] = useState(true)

function handleChange() {
  setChecked(!checked)
}

  return (

    <label className='ingredients'>
      <input
        type="checkbox"
        className="ingredients"
        checked={checked}
        onChange={handleChange}/>
        {ingredient.name}
    </label>

  )
}

export default IngredientList