# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string           default(""), not null
#  unionid    :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  
  has_one :wx_user, dependent: :nullify
  accepts_nested_attributes_for :wx_user, allow_destroy: true

  has_many :orders

  has_many :user_receiving_addresses, dependent: :nullify
  accepts_nested_attributes_for :user_receiving_addresses, allow_destroy: true

  #AES 解密
  def self.aes_dicrypt(data, key, iv = '0000000000000000', cipher_type)
    session_key = Base64.decode64(key)
    encryptedData = Base64.decode64(data)
    iv = Base64.decode64(iv)

    aes = OpenSSL::Cipher.new(cipher_type)
    aes.decrypt
    aes.key = session_key
    aes.iv = iv
    aes.padding = 1
    aes.update(encryptedData) + aes.final
  end
end
