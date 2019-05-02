# https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#login'
  resources :user
  # get 'welcome' => 'pages#login'
  get 'test' => 'pages#test'
  #get 'welcome/user' => 'pages#create_user'
  get 'welcome/user' => 'users#create_user'
  post 'welcome/user' => 'pages#market'
  post '/user/3', to: 'pages#market'
  
  #get 'welcome/market' => 'pages#market'
  # get "/Desktop/black-market-pizza/app/views/pages/market.html.erb", to: "pages#market", as: "market"
  #post "/Desktop/black-market-pizza/app/views/pages/market.html.erb", to: "pages#market", as: "market"
  
  post "/Desktop/black-market-pizza/app/views/sessions/market.html.erb", to: "pages#market", as: "market"
  
  get "/Desktop/black-market-pizza/app/views/sessions/new.html.erb", to: 'sessions#new', as: "new"
  post '/login',   to: 'sessions#create'
  
  
  
end


		  #<a href="/Desktop/black-market-pizza/app/views/pages/market.html.erb">		  
		  
          #  <button type = "button" >login</button>
          #</a>
