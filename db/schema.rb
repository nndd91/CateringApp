# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170518141223) do

  create_table "itemlists", force: :cascade do |t|
    t.integer "order_id"
    t.string "itemname"
    t.integer "orderid"
    t.string "itemtag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_itemlists_on_order_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "item"
    t.text "description"
    t.string "img_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "itemtag"
  end

  create_table "orders", force: :cascade do |t|
    t.string "custname"
    t.string "custaddress"
    t.text "itemslistid"
    t.integer "price_plan"
    t.integer "finalprice"
    t.integer "no_of_items_sel"
    t.date "datePurchase"
    t.date "deliveryDate"
    t.integer "contactnumber"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priceplans", force: :cascade do |t|
    t.integer "no_of_people"
    t.integer "no_of_dishes"
    t.integer "price"
    t.integer "add_item_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
