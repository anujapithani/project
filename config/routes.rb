Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/' => 'users#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/add_to_cart/:id' => 'carts#add_to_cart'
  get '/shopping' => 'shoppings#show'
  get '/lineitem' => 'line_items#show'
  post '/orders/:id' => 'orders#create'
  get '/orders' => 'orders#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products
  resources :addresses
end
