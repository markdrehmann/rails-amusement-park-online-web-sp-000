Rails.application.routes.draw do
  root 'welcome#home'
  resources :users
  resources :attractions
  get '/signin', to: 'sessions#login'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  resources :rides
end
