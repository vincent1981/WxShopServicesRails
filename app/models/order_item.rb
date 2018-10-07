# == Schema Information
#
# Table name: order_items
#
#  id              :integer          not null, primary key
#  order_id        :integer
#  product_spec_id :integer
#  quantity        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product_spec
end
