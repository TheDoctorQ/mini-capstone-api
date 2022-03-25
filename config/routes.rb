Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show" 

  get "/cart" => "shoppingcart#index"
  get "/cart/:id" => "shoppingcart#show"
  post "/cart" => "shoppingcart#create"
  patch "/cart/:id" => "shoppingcart#update"
  delete "/cart/:id" => "shoppingcart#destroy"

end