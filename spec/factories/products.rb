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

FactoryBot.define do
  factory :product do
    sequence(:product_name) { FFaker::Product.product_name }
    description {''}
    online {true}
    sequence(:recommend) {FFaker::Boolean.sample}
    created_at {Time.zone.now}
    updated_at {Time.zone.now}
  end
end
