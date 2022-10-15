Rails.application.routes.draw do
  root "tweets#index"
  
  resources :tweets
  resources :comments
  resources :users
  
end
