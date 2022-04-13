Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id/edit" => "products#update"
  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show" 

  get "/cart" => "carted_products#index"
  get "/cart/:id" => "carted_products#show"
  post "/cart" => "carted_products#create"
  patch "/cart/:id" => "carted_products#update"
  delete "/cart/:id" => "carted_products#destroy"

end