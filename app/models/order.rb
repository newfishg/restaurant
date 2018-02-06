# == Schema Information
#
# Table name: orders
#
#  id                        :integer          not null, primary key
#  table_number              :integer
#  order_status              :string
#  waiter_name              :string
#  created_at                :datetime
#  updated_at                :datetime


class Order < ApplicationRecord
  include AASM

  aasm do
    state :processing, :initial => true
    state :running, :cleaning

    event :run do
      transitions :from => :processing, :to => :running
    end

    event :clean do
      transitions :from => :running, :to => :cleaning
    end

    event :cooking do
      transitions :from => [:running, :cleaning], :to => :processing
    end
  end

  has_one :payment_profile
  has_many :order_details
  has_many :dishes, through: :order_details

  # validates_presence_of :table_number

  attr_reader :order_status
  attr_accessor :waiter_name, :table_number

  def update_owner
    # change owner of this order
  end

  def complete_order
    # change order_status to complete
  end

  def change_status
    # change status of order
  end

  def total
    # give whole amount of this order
    # calculate from payment_profile
  end
end

# state machine act_as to set/change status

# flowchart flow diagram

# start from user

# real world flow, and how my system handle that request

# use index, can make join table work correctly

# depend on situation you use, 

# mongo db