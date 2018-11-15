# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  title       :string           default(""), not null
#  picture_url :string           not null
#  is_display  :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :banner do
    product
    sequence(:title) { FFaker::Book.title }
    sequence(:picture_url) { FFaker::Image.url }
    sequence(:is_display) {FFaker::Boolean.maybe}
    created_at {Time.now}
    updated_at {Time.now}
  end
end
