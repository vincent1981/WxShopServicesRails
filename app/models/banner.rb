# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  title       :string           default(""), not null
#  picture_url :string           not null
#  is_display  :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Banner < ApplicationRecord
  scope :all_banner, -> { where(:is_display => true)}

  belongs_to :product
end
