import React, {useEffect, useState} from 'react';
import Ingredients from "./Ingredients"
import RecipeField from "./RecipeField"


function Main({ ingredients, recipes, showRecipeClick, showList, setShowList, user, userRecipes}) {
// const [showList, setShowList] = useState([])
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
        <div className='welcome-message'>
        <h3> Welcome to Baked! A curated selection of recipes tried, tested, and approved.
           Select an ingredient you have in your pantry and we'll show you what you can do with it!</h3>
           </div>
        <RecipeField user={user} recipes={recipes} showList={showList} showAll={showAll} showRecipeClick={showRecipeClick} userRecipes={userRecipes}/>
    </div>
  )
}

export default Main;
