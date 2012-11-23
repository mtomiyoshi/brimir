Helpdesksysteem::Application.routes.draw do

  resources :replies

  devise_for :users

  resources :users

  resources :tickets, only: [:index, :show, :update]

  root :to => 'tickets#index'

end
