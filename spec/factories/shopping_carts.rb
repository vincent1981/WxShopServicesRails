# == Schema Information
#
# Table name: shopping_carts
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  product_spec_id :integer
#  quantity        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :shopping_cart do
    
  end
end
