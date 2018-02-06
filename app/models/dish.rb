# == Schema Information
#
# Table name: dishes
#
#  id                        :integer          not null, primary key
#  name                      :string(100)
#  description               :string(40)
#  price                     :integer
#  created_at                :datetime
#  updated_at                :datetime


class Dish < ApplicationRecord
  has_many :order_details
  has_many :orders, through: :order_details

  attr_accessor :name, :description, :price
end
