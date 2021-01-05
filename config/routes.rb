Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :blogs
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
