# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :user_stocks, only: %i[create destroy]
  resources :friendships, only: %i[create destroy]
  resources :users, only: [:show]
  get 'users/my_portfolio'
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
  get 'my_friends', to: 'users#my_friends'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
