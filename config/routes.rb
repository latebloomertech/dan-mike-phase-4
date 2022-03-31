Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  


get '/detail', to: 'ingredients#detail'

get '*path',
to: 'fallback#index',
constraints: ->(req) { !req.xhr? && req.format.html? }

end
