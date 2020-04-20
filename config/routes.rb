# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/my_portfolio'
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
