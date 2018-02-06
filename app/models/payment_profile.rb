# == Schema Information
#
# Table name: payment_profiles
#
#  id                        :integer          not null, primary key
#  cc_display_number         :string
#  cc_type                   :string
#  amount                    :integer
#  payment_method            :string
#  created_at                :datetime
#  updated_at                :datetime


class PaymentProfile < ApplicationRecord
  belongs_to :order

  attr_reader :amount, :cc_display_number, :cc_type
  attr_accessor :payment_method

  def pay
    # change the status of order after they pay
  end

  def discount(percentage, options = {})
    # do discount based on percentage, and additional options
  end
end

# tip should record in payment and tip belongs to a waiter
