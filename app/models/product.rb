# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  product_name :string           default(""), not null
#  description  :text
#  online       :boolean          not null
#  recommend    :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ApplicationRecord
  scope :recommend_products, -> { 
    where(:recommend => true, :online => true)
  }
  
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images, allow_destroy: true

  has_many :product_specs, dependent: :destroy
  accepts_nested_attributes_for :product_specs, allow_destroy: true

  has_one :category_product
end
