class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :table_number
      t.string :waiter_name
      t.string :order_status

      t.timestamps
    end
  end
end
