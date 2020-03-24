Rails.application.routes.draw do
  devise_for :users
  post '/graphql', to: 'graphql#execute'
  resources :users
  resources :stars
  resources :genres
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
