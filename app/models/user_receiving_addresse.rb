# == Schema Information
#
# Table name: user_receiving_addresses
#
#  id           :integer          not null, primary key
#  user_id      :integer
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

class UserReceivingAddresse < ApplicationRecord
  belongs_to :user
  
  belongs_to :province,
             class_name: 'Area',
             foreign_key: 'province_id',
             optional: true

  belongs_to :city,
             class_name: 'Area',
             foreign_key: 'city_id',
             optional: true

  belongs_to :district,
             class_name: 'Area',
             foreign_key: 'district_id',
             optional: true
end
