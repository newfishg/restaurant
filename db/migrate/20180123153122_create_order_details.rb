class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :quantity
      t.timestamp :order_in
      t.timestamp :order_out
      t.references :dish, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
