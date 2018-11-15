# == Schema Information
#
# Table name: category_products
#
#  id          :integer          not null, primary key
#  category_id :integer
#  product_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryBot.define do
  factory :category_product do
    category
    product
  end
end
