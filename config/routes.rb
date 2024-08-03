Rails.application.routes.draw do
  resources :players, only: [:new, :create]

  root 'home#index'
  devise_for :users
end
