class CreateItemlists < ActiveRecord::Migration[5.1]
  def change
    create_table :itemlists do |t|
      t.belongs_to :order
      t.string :itemname
      t.integer :orderid
      t.string :itemtag

      t.timestamps
    end
  end
end
