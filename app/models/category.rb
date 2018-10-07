# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_name :string           not null
#  parent_id     :integer
#

class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', optional: true
  
  has_many :child_categories, class_name: 'ProductCategory',
                              foreign_key: 'parent_id',
                              dependent: :nullify
  
  has_many :category_products, dependent: :destroy

  has_many :products, through: :category_products
end
