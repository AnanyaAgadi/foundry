class AddDeliveryToProd < ActiveRecord::Migration[5.2]
  def change
    add_column :prods, :delivery, :string
  end
end
