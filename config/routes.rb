# frozen_string_literal: true

Rails.application.routes.draw do
  get 'auth/login'
  get 'auth/logout'
  post 'auth/register'
  resources :stars
  resources :genres
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
