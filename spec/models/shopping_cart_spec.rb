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

require 'rails_helper'

RSpec.describe ShoppingCart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
