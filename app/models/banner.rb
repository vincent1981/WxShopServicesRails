# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  title       :string           default(""), not null
#  picture_url :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Banner < ApplicationRecord
end
