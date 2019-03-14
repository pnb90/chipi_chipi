json.id product.id
json.name product.name
json.weight product.weight
json.upc_code product.upc_code

json.inventories do 
  json.array! product.inventories, partial: 'api/inventories/inventory', as: :inventory 
end