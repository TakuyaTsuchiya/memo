Rails.application.routes.draw do

  root "home#show"

  resources :posts
  resources :users
  resource :user_session
end
