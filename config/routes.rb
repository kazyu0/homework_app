Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root "home#index"

  resources :homeworks, only: [:index, :new, :create, :edit, :update, :destroy] 
end
