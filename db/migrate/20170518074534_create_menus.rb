class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :item
      t.text :description
      t.string :img_location

      t.timestamps
    end
  end
end
