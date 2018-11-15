require 'rails_helper'

RSpec.describe "WxProgram::Homes", type: :request do
  describe "GET /wx_program_homes" do
    let(:product) {create(:product)}
    let!(:banners) { create_list(:banner, 3, product: product, is_display: true)}
    let!(:products) {create_list(:product, 3)}

    it "show home_info" do
      get '/wx_program/home/home_info.json'

      res = JSON.parse(response.body).with_indifferent_access
      
      expect(response).to have_http_status(200)
      expect(res[:home_info][:banner_list].length).to eq(3)  
    end
  end
end
