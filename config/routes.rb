Rails.application.routes.draw do
  resources :groups
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/users', to: 'users#index'
      get '/profile', to: 'users#profile'
      resources :groups
    end
  end
end