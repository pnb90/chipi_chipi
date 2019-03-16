json.id product.id
json.name product.name
json.weight product.weight
json.upc_code product.upc_code

json.inventories do 
  json.array! product.inventories, partial: 'api/inventories/inventory', as: :inventory 
end

json.list_products do
  json.array! product.list_products, partial: 'api/list_products/list_product', as: :list_product 
end
