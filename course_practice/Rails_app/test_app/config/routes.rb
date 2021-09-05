Rails.application.routes.draw do
  resources :users
  #dyh bet generate a whole bunch of routes for the articles
  resources :articles
  #go to home action in pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'
end
