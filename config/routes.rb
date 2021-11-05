Rails.application.routes.draw do
  get 'rooms/index'
  get 'rooms/show'
  get 'sessions_teacher/new'
  get 'sessions/new'
  resources :chats
  resources :diaries
  resources :diary_coments
  resources :teachers
  resources :users
  resources :diarytitles
  resources :targets

  get '/',to:'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/write_or_show'
  get 'home/search_grade_class'
  get 'home/clicked'
  get '/signup', to:'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'home#index'

  get '/login_teacher', to:'sessions_teacher#new'
  post '/login_teacher', to:'sessions_teacher#create'
end
