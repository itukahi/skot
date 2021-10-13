Rails.application.routes.draw do
  resources :targets
  resources :chats
  resources :diaries
  resources :diary_coments
  resources :teachers
  resources :users
  get '/',to:'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
