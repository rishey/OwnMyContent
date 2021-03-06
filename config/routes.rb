require 'sidekiq/web'

OwnMyContent::Application.routes.draw do

  get "/home" => "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
  get "/select"=> "static_pages#select"
  root 'users#index'
  resources :feeds

  post "/local" => "feeds#local_directory"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  # get "/logout" => "sessions#destroy"
  delete "/logout" => "sessions#destroy"
  get '/logout', to: 'sessions#destroy'
  ####for db oauth:
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]

  mount Sidekiq::Web, at: '/sidekiq'
end
