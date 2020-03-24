# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
                     controllers: {
                       registrations: 'registrations'
                     },
                     path_names: {
                       sign_in: 'login',
                       sign_out: 'logout',
                       registration: 'signup'
                     }
  post '/graphql', to: 'graphql#execute'
  resources :users
  resources :stars
  resources :genres
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
