Rails.application.routes.draw do
  get 'home/index'

  root "home#index"

  devise_for :crashers
  resources :crashers, :only => [:create, :new, :show, :edit]

  devise_for :hosts
  resources :hosts, :only => [:create, :new, :show, :edit]

  resources :crashings, except: [:edit, :update, :show] do
    resources :reviews, only: [:new, :create]
  end

end
