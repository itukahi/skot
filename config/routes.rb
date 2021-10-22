Rails.application.routes.draw do
  get 'sessions/new'
  resources :chats
  resources :diaries
  resources :diary_coments
  resources :teachers
  resources :users
  resources :diarytitles
  
  get '/',to:'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signup', to:'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'home#index'
end
