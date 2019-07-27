Rails.application.routes.draw do

  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  #get 'pages/index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  resources :comments
  # 新規追加
  resources :favorites, only: [:create, :destroy]
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  # 新規追加
  post '/favorites', to: 'favorites#destroy'


end
