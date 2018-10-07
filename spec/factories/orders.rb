# == Schema Information
#
# Table name: orders
#
#  id                        :integer          not null, primary key
#  user_id                   :integer
#  user_receiving_address_id :integer
#  count_money               :decimal(10, 2)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

FactoryBot.define do
  factory :order do
    
  end
end
