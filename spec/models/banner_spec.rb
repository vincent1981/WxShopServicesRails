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

require 'rails_helper'

RSpec.describe Banner, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
