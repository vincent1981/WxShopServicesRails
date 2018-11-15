# == Schema Information
#
# Table name: product_images
#
#  id         :integer          not null, primary key
#  product_id :integer
#  image_url  :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :product_image do
    product
    sequence(:image_url) { FFaker::Image.url }
  end
end
