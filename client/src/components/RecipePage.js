import React from 'react'
import FavButton from './FavoriteButton'
function RecipePage({ recipeDetail }) {
    
  return (
    <div className='recipe-page'>
        <h1>{recipeDetail.name}</h1>
        <FavButton />
        <h2>Description</h2>
        <p>{recipeDetail.description}</p>
        <h2>Instructions</h2>
        <p>{recipeDetail.instructions}</p>
    </div>
  )
}

export default RecipePage