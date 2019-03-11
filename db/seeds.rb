User.create(nickname: "Phuoc")
User.create(nickname: "Mark")
User.create(nickname: "Brye")
User.create(nickname: "Matt")

Store.create(name: "H-E-B")
Store.create(name: "Trader Joe's")
Store.create(name: "Aldi")
Store.create(name: "Whole Foods")
Store.create(name: "Jewel Osco")

Product.create(name: "banana")
Product.create(name: "apple")
Product.create(name: "bread")
Product.create(name: "honey")
Product.create(name: "butter")
Product.create(name: "sugar")
Product.create(name: "mango")

Inventory.create(
                store_id: 1,
                product_id: 1,
                product_id: 2,
                product_id: 3,
                price: rand(1..10) 
                )

Inventory.create(
                store_id: 2,
                product_id: 1,
                product_id: rand(1..7),
                product_id: rand(1..7),
                price: rand(1..10) 
                )

Inventory.create(
                store_id: 3,
                product_id: 1,
                product_id: rand(1..7),
                product_id: rand(1..7),
                price: rand(1..10) 
                )

Inventory.create(
                store_id: 4,
                product_id: 1,
                product_id: rand(1..7),
                product_id: rand(1..7),
                price: rand(1..10) 
                )

Inventory.create(
                store_id: 5,
                product_id: 1,
                product_id: rand(1..7),
                product_id: rand(1..7),
                price: rand(1..10) 
                )

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "family")

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "bbq")

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "fun")

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "party")

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "all")

List.create(user_id: rand(1..4), store_id: rand(1..5), name: "dinner party")

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )
ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )

ListProduct.create(
                  list_id: rand(1..6),
                  product_id: rand(1..7),
                  quantity: rand(100),
                  description: "a product on a list"
                  )