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

class CategoryProduct < ApplicationRecord
  belongs_to :product
  belongs_to :category
end
