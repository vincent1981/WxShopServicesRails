require 'rails_helper'

RSpec.describe Banner, type: :model do
  describe "test secop" do
    let(:product) {create(:product)}
    let!(:banners) { create_list(:banner, 3, product: product)}
    it "test all banner" do
      banners = Banner.all_banner
      expect(banners.length).to eq(2)    
    end
  end
end
