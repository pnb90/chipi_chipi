Rails.application.routes.draw do
  namespace :api do
    get "/users" => 'users#index'
    post "/users" => 'users#create' 

    post "/sessions" => "sessions#create" 

    get "/stores" => 'stores#index'
    get "/stores/:id" => 'stores#show'
    get '/stores/new' => 'stores#new'
    post "/stores" => 'stores#create'
    patch "/stores/:id" => 'stores#update'
    delete "/stores/:id" => 'stores#destroy'

    get "/products" => 'products#index'
    get "/products/:id" => 'products#show'
    get '/products/new' => 'products#new'
    post "/products" => 'products#create'
    patch "/products/:id" => 'products#update'
    delete "/products/:id" => 'products#destroy'

    get "/lists" => 'lists#index'
    get "/lists/:id" => 'lists#show'
    get '/lists/new' => 'lists#new'
    post "/lists" => 'lists#create'
    patch "/lists/:id" => 'lists#update'
    delete "/lists/:id" => 'lists#destroy'

    get "/inventories" => 'inventories#index'
    get "/inventories/:id" => 'inventories#show'
    get '/inventories/new' => 'inventories#new'
    post "/inventories" => 'inventories#create'
    patch "/inventories/:id" => 'inventories#update'
    delete "/inventories/:id" => 'inventories#destroy'

    get "/list_products" => 'list_products#index'
    get "/list_products/:id" => 'list_products#show'
    get '/list_products/new' => 'list_products#new'
    post "/list_products" => 'list_products#create'
    patch "/list_products/:id" => 'list_products#update'
    delete "/list_products/:id" => 'list_products#destroy'
  end
end
