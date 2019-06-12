Rails.application.routes.draw do
  get 'search/show'
  get 'starships/show'
  get 'planets/show'
  get 'character/index'
  root 'movies#index' 

  get '/movies/:id', to: 'movies#show', as: :movie

  #get '/character/:url', to: 'character#index', as: :character
  get '/character/:url', to: 'character#show', as: :character

  get '/planets/:id', to: 'planets#show', as: :planets

  get '/starships/:id', to: 'starships#show', as: :starships

  get '/search/:id', to: 'search#show', as: :search

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
