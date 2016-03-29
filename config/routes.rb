Rails.application.routes.draw do
  resources :users, only: [:show, :update, :create, :index, :destroy]

  resources :contacts, only: [:show, :update, :create, :index, :destroy]  


end
