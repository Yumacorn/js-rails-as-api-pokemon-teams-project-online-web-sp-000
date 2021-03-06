Rails.application.routes.draw do
  root 'trainers#index'
  delete '/pokemons/:id', to: 'trainers#remove_pokemon'
  # create '/pokemons/:id', to: 'trainers#add_pokemon'
  resources :pokemons
  resources :trainers, only: [:index, :show]

  # get '/trainers/:id', to: 'trainers#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
