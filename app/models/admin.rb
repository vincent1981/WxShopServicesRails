# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  username        :string           default(""), not null
#  password_digset :string           default(""), not null
#  access_token    :string           default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Admin < ApplicationRecord
end
