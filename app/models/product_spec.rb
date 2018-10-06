# == Schema Information
#
# Table name: product_specs
#
#  id         :integer          not null, primary key
#  product_id :integer
#  spec       :string           not null
#  price      :decimal(10, 2)   default(0.0), not null
#  stocks     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductSpec < ApplicationRecord
end
