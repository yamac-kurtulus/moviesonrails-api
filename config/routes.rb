# frozen_string_literal: true

Rails.application.routes.draw do
  # Authentication
  post 'auth/login'
  get 'auth/logout'
  post 'auth/register'

  get 'movies', to: 'movies#index', as: 'movies'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  post 'movies/:id/follow', to: 'movies#follow', as: 'f_movie'

  get 'genres', to: 'genres#index', as: 'genres'
  get 'genres/:id', to: 'genres#show', as: 'genre'
  post 'genres/:id/follow', to: 'genres#follow', as: 'f_genre'
  

  get 'stars/', to: 'stars#index', as: 'stars'
  get 'stars/:id', to: 'stars#show', as: 'star'
  post 'stars/:id/follow', to: 'stars#follow', as: 'f_star'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
