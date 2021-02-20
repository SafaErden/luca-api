Rails.application.routes.draw do
  resources :stars, only: [:create]
  resources :questions, only: [:index, :create]
end
