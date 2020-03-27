# frozen_string_literal: true

Rails.application.routes.draw do
  post 'me/follow'
  get 'me/suggest'
  # Authentication
  post 'auth/login'
  get 'auth/logout'
  post 'auth/register'

  get 'movies', to: 'movies#index', as: 'movies'
  get 'movies/:id', to: 'movies#show', as: 'movie'

  get 'genres', to: 'genres#index', as: 'genres'
  get 'genres/:id', to: 'genres#show', as: 'genre'

  get 'stars/', to: 'stars#index', as: 'stars' 
  get 'stars/:id', to: 'stars#show', as: 'star' 



  resources :teams, only: [:show, :index] do
    put 'add_player', on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
