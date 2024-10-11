Rails.application.routes.draw do
  resources :chats
  resources :messages
  resources :comments
  resources :posts
  resources :startups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
