Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  get '/logout' => 'users#logout'

  resources :users do
    get :new, on: :collection
    post :follow, on: :member
    get :registercard, on: :member
  end

  resources :items

  resources :orders
end
