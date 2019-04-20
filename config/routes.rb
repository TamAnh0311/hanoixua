Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'

  get '/menu',    to: 'homepage#menu'
  get '/gallery', to: 'homepage#gallery'
  get '/about',   to: 'homepage#about'
  get '/home',    to: 'homepage#home'
  get '/class',   to: 'homepage#class'

  get '/users',    to: 'users#index'
  get '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/show',     to: 'users#show'


  get '/login',       to: 'sessions#new'
  post '/login',      to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  get 'postIndex',    to: 'microposts#index'
  get 'postShow',     to: 'microposts#show'
  get 'postNew',      to: 'microposts#new'

  resources :microposts
  resources :users

  root 'homepage#home'
end
