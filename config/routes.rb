Rails.application.routes.draw do
  get 'products/new'
  get 'products/index'
  get 'products/edit'
  get 'products/destroy'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/' => 'users#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products
end
