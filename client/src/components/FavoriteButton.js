import {useState} from "react";


function FavButton ({onFavorite, user_recipe}) {
 const [favorite, setFavorite] = useState("");

 function handleSubmit(e) {
    e.preventDefault();
    fetch("/user_recipes", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ user_recipe }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => onFavorite(user));
      }
    });
  }

  return (
    <form onSubmit={handleSubmit}>

      <label htmlFor="Favorite Recipe"> </label>
      <button type="submit" id="favButton" value={favorite} onChange={(e) => setFavorite(e.target.value)}>Favortie</button>
    </form>
  );
}

export default FavButton;

