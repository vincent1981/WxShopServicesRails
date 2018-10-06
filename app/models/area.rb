# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  category   :string
#  name       :string
#  pinyin     :string
#  area_code  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ApplicationRecord
end
