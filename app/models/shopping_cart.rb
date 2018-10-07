# == Schema Information
#
# Table name: shopping_carts
#
#  id                        :integer          not null, primary key
#  user_id                   :integer
#  product_spec_id           :integer
#  user_receiving_address_id :integer
#  quantity                  :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class ShoppingCart < ApplicationRecord
  belongs_to :user
  belongs_to :product_spec
end
