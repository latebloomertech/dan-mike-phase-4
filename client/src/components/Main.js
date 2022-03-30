import React, {useEffect, useState} from 'react';
import Ingredients from "./Ingredients"
import RecipeField from "./RecipeField"


function Main({ ingredients, recipes, showRecipeClick }) {
const [showList, setShowList] = useState([])
const [showAll, setShowAll] = useState([])

function handleShowAll() {
  setShowAll([recipes])
}

function handleIngredientClick(e) {
  console.log(e.target.value)

 fetch(`/ingredients/${e.target.value}`)
 .then((res) =>res.json())
 .then((data) => setShowList(data))

}

// console.log(showList)

    return (
    <div className="Main">
        <Ingredients ingredients={ingredients} handleIngredientClick={handleIngredientClick} handleShowAll={handleShowAll}/>
        <RecipeField recipes={recipes} showList={showList} showAll={showAll} showRecipeClick={showRecipeClick}/>
    </div>
  )
}

export default Main;
