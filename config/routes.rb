Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome' => 'pages#home'
  #get 'login' => 'pages#login'
  get "/Desktop/black-market-pizza/app/views/pages/login.html.erb", to: "pages#login", as: "login"
end
