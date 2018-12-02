# == Schema Information
#
# Table name: wx_users
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  access_token :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class WxUser < ApplicationRecord
  belongs_to :user

  before_validation :ensure_attrs


  def reset_access_token
    self.access_token = new_access_token

    if self.save
      self.access_token
    else
      nil
    end
  end

  private

  def ensure_attrs
    check_or_create_access_token
  end

  def check_or_create_access_token
    return unless self.access_token.blank?

    self.access_token = new_access_token
  end

  def new_access_token
    new_token = nil

    5.times do
      new_token = SecureRandom.hex(16)
      break unless WxUser.exists?(:access_token => new_token)
    end

    new_token
  end
end
