class CreatePaymentProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_profiles do |t|
      t.string :cc_display_number
      t.string :cc_type
      t.integer :amount
      t.string :payment_method
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
