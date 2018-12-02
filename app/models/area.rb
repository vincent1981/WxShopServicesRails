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
  scope :provinces, -> { where(:category => 'province')}

  CATEGORIES = %w[
    province
    city
    district
  ].map(&:freeze).freeze

  belongs_to :parent, class_name: 'Area', optional: true
  has_many :childs, class_name: "Area", foreign_key: "parent_id"
end
