# https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#login'
  # get 'welcome' => 'pages#login'
  get 'test' => 'pages#test'
end
