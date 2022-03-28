Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/hello', to: 'application#hello_world'

get '*path',
to: 'fallback#index',
constraints: ->(req) { !req.xhr? && req.format.html? }

end
