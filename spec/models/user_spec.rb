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

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "a specification" do
    let(:session_key) {'tiihtNczf5v6AKRyjwEUhQ=='}
    let(:encryptedData) {'CiyLU1Aw2KjvrjMdj8YKliAjtP4gsMZMQmRzooG2xrDcvSnxIMXFufNstNGTyaGS9uT5geRa0W4oTOb1WT7fJlAC+oNPdbB+3hVbJSRgv+4lGOETKUQz6OYStslQ142dNCuabNPGBzlooOmB231qMM85d2/fV6ChevvXvQP8Hkue1poOFtnEtpyxVLW1zAo6/1Xx1COxFvrc2d7UL/lmHInNlxuacJXwu0fjpXfz/YqYzBIBzD6WUfTIF9GRHpOn/Hz7saL8xz+W//FRAUid1OksQaQx4CMs8LOddcQhULW4ucetDf96JcR3g0gfRK4PC7E/r7Z6xNrXd2UIeorGj5Ef7b1pJAYB6Y5anaHqZ9J6nKEBvB4DnNLIVWSgARns/8wR2SiRS7MNACwTyrGvt9ts8p12PKFdlqYTopNHR1Vf7XjfhQlVsAJdNiKdYmYVoKlaRv85IfVunYzO0IKXsyl7JCUjCpoG20f0a04COwfneQAGGwd5oa+T8yO5hzuyDb/XcxxmK01EpqOyuxINew=='}
    let(:iv) {'r7BXXKkLb8qrSNn05n0qiA=='}

    it "test aes_dicrypt" do
      res = User.aes_dicrypt(encryptedData, session_key, iv, 'AES-128-CBC')
      res = JSON.parse(res).with_indifferent_access
      expect(res[:openId]).to eq('oGZUI0egBJY1zhBYw2KhdUfwVJJE') 
      expect(res[:unionId]).to eq('ocMvos6NjeKLIBqg5Mr9QjxrP1FA')    
    end
  end
end
