class RenameOrderstable < ActiveRecord::Migration[5.1]
  def change
    rename_table :order_tables, :orders
  end
end
