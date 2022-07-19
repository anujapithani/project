class AddAddressLine1ToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :address_line_1, :string
  end
end
