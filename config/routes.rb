Rails.application.routes.draw do
  resources :user_recipes
  resources :users
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # get "/auth", to: "users#show"
  get "/me/recipes", to: "users#recipes"
  post "/user_recipes/remove_by_recipe_id", to: "user_recipes#remove_by_recipe_id"

get '/detail', to: 'ingredients#detail'

get '*path', to: 'fallback#index',
constraints: ->(req) { !req.xhr? && req.format.html? }

end