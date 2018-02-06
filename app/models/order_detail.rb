# == Schema Information
#
# Table name: order_details
#
#  id                       :integer          not null, primary key
#  quantity                 :integer
#  order_in                 :datetime
#  order_out                :datetime

class OrderDetail < ApplicationRecord
  belongs_to :dish
  belongs_to :order

  attr_reader :order_in, :order_out
  attr_accessor :quantity

  def update_order_in
    
  end

  def update_order_out
    
  end
end
