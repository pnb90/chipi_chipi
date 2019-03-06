Rails.application.routes.draw do
  namespace :api do
    get "/users" => 'users#index'
    post "/users" => 'users#create'  

    get "/products" => 'products#index'
    get "/products/:id" => 'products#show'
    get '/products/new' => 'products#new'
    post "/products" => 'products#create'
    patch "/products/:id" => 'products#update'
    delete "/products/:id" => 'products#destroy'
  end
end
