Rails.application.routes.draw do  
  
  get 'rooms/show'
  root :to => 'pages#index'

  get '/description' => 'pages#description'
  get '/contact' => 'pages#contact'

  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  resources :users
  resources :ivents
  resources :photos

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end



end


