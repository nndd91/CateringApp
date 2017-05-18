class RenameColumnDilieryDateToDeliveryDate < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :delieryDate, :deliveryDate
  end
end
