class PaymentProfile < ApplicationRecord
  belongs_to :order

  attr_reader :amount
  attr_accessor :payment_method

  def 
    
  end
end
