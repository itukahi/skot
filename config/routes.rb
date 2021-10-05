Rails.application.routes.draw do
<<<<<<< HEAD
  resources :targets
  resources :chats
=======
  resources :diaries
  resources :diary_coments
  resources :teachers
  resources :users
  get 'home/top'
>>>>>>> origin/master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
