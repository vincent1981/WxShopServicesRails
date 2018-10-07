# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_one :wx_user, dependent: :nullify
  accepts_nested_attributes_for :wx_user, allow_destroy: true

  has_many :orders

  has_many :user_receiving_addresses, dependent: :nullify
  accepts_nested_attributes_for :user_receiving_addresses, allow_destroy: true
end
