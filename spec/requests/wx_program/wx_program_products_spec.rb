require 'rails_helper'

RSpec.describe "WxProgram::Products", type: :request do
  describe "GET /wx_program_products" do
    let(:category) { create(:category, category_name: '衬衣', parent_id: nil) }
    let!(:products) { create_list(:product, 3)}
    before do
      products.each do |product|
        create(:category_product, category: category, product: product)
      end
    end

    let!(:product_images) {create_list(:product_image, 3, 
      product: products.first)}

    it "show category products" do
      get '/wx_program/products/get_products_by_category_id.json', 
        params:{:category_id => category.id}

      res = JSON.parse(response.body).with_indifferent_access

      expect(response).to have_http_status(200)
    end

    it "show product detail" do
      get '/wx_program/products/product_detail.json',
        params: {:product_id => products.first.id}

      res = JSON.parse(response.body).with_indifferent_access
      
      expect(response).to have_http_status(200)
    end    
  end
end
