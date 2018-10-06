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
    
  end
end
