Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  get "/query/:name" => "products#query"
  
  get "/purchase" => "orders#create"
  get "/cart" => "orders#show"
  get "/all" => "orders#index"


end
