Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  get '/logout' => 'users#logout'

  resources :users do
    get :choice, on: :collection
    post :follow, on: :member
  end

  resources :items

  resources :orders
end
