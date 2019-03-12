json.id inventory.id
json.store_id inventory.store_id
json.product_id inventory.product_id
json.price inventory.price

json.store do
  json.partial! inventory.store, partial: 'api/stores/store', as: :store
end