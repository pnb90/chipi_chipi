json.id product.id
json.name product.name
json.weight product.weight
json.upc_code product.upc_code

json.store do
  json.array! product.stores, partial: 'api/stores/store', as: :store 
end 