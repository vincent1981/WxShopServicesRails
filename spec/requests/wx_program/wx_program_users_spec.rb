require 'rails_helper'

RSpec.describe "WxProgram::Users", type: :request do
  describe "post login" do
    it "works! login" do
      post '/wx_program/users/login.json', 
        :params => {:code => '071YEW6F1qKWk10VzV7F13h27F1YEW6U'}
      
      expect(response).to have_http_status(200)
    end
  end
end
