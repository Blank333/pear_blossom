Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "home#index"

  resources :users
  resources :rooms do
    resources :reviews
  end
  get 'about/index'
  
  resources :user_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'


end
