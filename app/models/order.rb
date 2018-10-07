# == Schema Information
#
# Table name: orders
#
#  id                        :integer          not null, primary key
#  user_id                   :integer
#  user_receiving_address_id :integer
#  count_money               :decimal(10, 2)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user
  
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items, allow_destroy: true
end
