class CreateOrderTables < ActiveRecord::Migration[5.1]
  def change
    create_table :order_tables do |t|
      t.string :custname
      t.string :custaddress
      t.text :items_select
      t.integer :price_plan
      t.integer :finalprice
      t.integer :no_of_items_sel
      t.date :datePurchase
      t.date :delieryDate
      t.integer :contactnumber
      t.string :email

      t.timestamps
    end
  end
end
