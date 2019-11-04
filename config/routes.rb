Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'capture:id' => 'pokemons#capture', as: 'capture'
  patch 'damage:id/:t_id' => 'trainers#damage', as: 'damage'
  get 'pokemon/new' => 'pokemons#new', as: 'newpokemon'
  post 'pokemon/create' => 'pokemons#create', as: 'create'
end
