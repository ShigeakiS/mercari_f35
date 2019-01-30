Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :users do
    get :new, on: :collection
    post :follow, on: :member
    get :registercard, on: :member
    get :logout, on: :collection
  end

  resources :items

  resources :orders
end
