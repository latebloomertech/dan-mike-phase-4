import React from 'react'
import FavButton from './FavoriteButton'
function RecipePage({ recipeDetail }) {

  return (
    <div className='recipe-page'>
        <h1>{recipeDetail.name}</h1>
         <img id="rPage-image" src={recipeDetail.image}/>
        <h2>Description</h2>
        <p>{recipeDetail.description}</p>
        <h2>Instructions</h2>
        <p id="instructions-p" style={{whiteSpace: "pre-wrap"}}>{recipeDetail.instructions}</p>
    </div>
  )
}

export default RecipePage