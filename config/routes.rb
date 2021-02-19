Rails.application.routes.draw do
  resources :stars, only: [:create]
  resources :answers, only: [:index, :create]
  resources :questions, only: [:index, :show, :create]
  resources :users, only: [:create]
  post '/sign_in', to: "users#sign_in"
end
