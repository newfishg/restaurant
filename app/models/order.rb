class Order < ApplicationRecord
  has_one :payment_profile
  has_many :order_details
  has_many :dishes, through: :order_details

  validates_presence_of :table_number

  def update_owner
    
  end

  def complete_order
    # change order_status to complete
  end

  def change_status
    # change status of oder
  end

  def total
    # give whole amount of this order
  end
end
