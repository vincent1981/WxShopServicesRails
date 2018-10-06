# == Schema Information
#
# Table name: wx_users
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  unionid      :string           default(""), not null
#  access_token :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class WxUser < ApplicationRecord
end
