Rails.application.routes.draw do
  root :to => 'pages#index'

  get '/description' => 'pages#description'
  get '/contact' => 'pages#contact'
  get "/lesson" => "pages#lesson"
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  resources :ivents
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  resources :photos, only:[:create,:destroy] do
    collection do
      get :list
    end
 end
  resources :icons, only:[:create,:destroy] do
    collection do
      get :list
    end
 end
  get 'ivents/:id/photos' => 'ivents#photos', as: 'ivent_photos'
  get 'users/:id/icons' => 'users#icons', as: 'user_icons'

end


