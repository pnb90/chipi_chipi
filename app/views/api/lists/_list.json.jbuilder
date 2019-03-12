json.name list.name
json.id list.id
json.user_id list.user_id
json.store_id list.store_id

json.products do
  json.array! list.products, partial: 'api/products/product', as: :product 
end