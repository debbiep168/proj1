Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: "pokemons#capture"
  patch '/damage', to: "pokemons#damage"
  get '/pokemon/new', to: "pokemons#new", as: "new_pokemon"
  post '/pokemons', to: "pokemons#create"
end
