Rails.application.routes.draw do
  #go to home action in pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'
end
