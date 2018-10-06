# == Schema Information
#
# Table name: user_receiving_addresses
#
#  id           :integer          not null, primary key
#  use_id       :integer
#  province_id  :integer
#  city_id      :integer
#  district_id  :integer
#  recipients   :string           not null
#  phone_number :string           not null
#  address      :string           not null
#  postal_code  :string           not null
#  acquiescent  :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe UserReceivingAddresse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
