// import {useState} from "react";
// import {Link} from "react-router-dom"


// function FavButton ({onFavorite, user_recipe}) {


//  function handleSubmit(e) {
//   console.log(e.target.value)
//   e.preventDefault();
//     fetch("/user_recipes", {
//       method: "POST",
//       headers: {
//         "Content-Type": "application/json",
//       },
//       body: JSON.stringify({ user_recipe }),
//     }).then((r) => {
//       if (r.ok) {
//         r.json().then((user) => setFavorite(user));
//       }
//     });
//   }

//   return (
//       <Link to={`/favorites`}>
//       <button
//       className="favButton"
//        onClick={(e) => handleSubmit(e.target.value)}
//        value={recipe.id}>Favorite
//       </button>
//       </Link>

//   );
// }

// export default FavButton;


