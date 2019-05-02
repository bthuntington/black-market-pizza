# https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#login'
  resources :user
  get 'test' => 'pages#test'
  get 'welcome/user' => 'users#create_user'
  post 'welcome/user' => 'pages#market'
  post 'login', to: 'sessions#create'
  post 'sessions#market', to: 'pages#market', as: 'market'
  get 'sessions#new', to: 'sessions#new', as: 'new'
end
