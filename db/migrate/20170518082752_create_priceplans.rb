class CreatePriceplans < ActiveRecord::Migration[5.1]
  def change
    create_table :priceplans do |t|
      t.integer :no_of_people
      t.integer :no_of_dishes
      t.integer :price
      t.integer :add_item_cost

      t.timestamps
    end
  end
end
