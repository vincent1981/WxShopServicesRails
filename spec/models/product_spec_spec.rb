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

require 'rails_helper'

RSpec.describe ProductSpec, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
