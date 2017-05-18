# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.create(item: "Chicken Wing", description: "Delicious wings", img_location: "chicken_wing.jpg", itemtag: "chicken_wing")
Menu.create(item: "Burger", description: "Delicious Burger", img_location: "burger.jpg", itemtag: "burger")
Menu.create(item: "Fries", description: "Delicious Fries", img_location: "fries.jpg", itemtag: "fries")
Priceplan.create(no_of_people: 10, no_of_dishes: 6, price: "100", add_item_cost: "10")
Priceplan.create(no_of_people: 20, no_of_dishes: 8, price: "200", add_item_cost: "20")
Priceplan.create(no_of_people: 30, no_of_dishes: 10, price: "300", add_item_cost: "30")

Itemlist.create(itemname: "Chicken Wing", itemtag: "chicken_wing", order_id: 1)
Itemlist.create(itemname: "Burger", itemtag: "burger", order_id: 1)

    t.integer "order_id"
    t.string "itemname"
    t.integer "orderid"
    t.string "itemtag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_itemlists_on_order_id"
