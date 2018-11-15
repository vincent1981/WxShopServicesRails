# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_name :string           not null
#  parent_id     :integer
#

FactoryBot.define do
  factory :category do
    # parent
  end
end
