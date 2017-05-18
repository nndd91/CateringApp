class AddItemTagToMenu < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :itemtag, :string
  end
end
