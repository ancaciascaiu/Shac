Rails.application.routes.draw do
  get 'home/index'

  root :to => "home#index"
  devise_for :crashers
  devise_for :hosts

  resources :crashings, except: [:edit, :update, :show]
end
