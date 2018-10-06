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

require 'rails_helper'

RSpec.describe WxUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
