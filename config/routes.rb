Rails.application.routes.draw do
  get 'sessions/new'
  resources :diaries
  resources :diary_coments
  resources :teachers
  resources :users
  get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signup', to:'user#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#crea'
  '/logout', to: 'sessions#destroy'
  root to: 'home#index'
end
