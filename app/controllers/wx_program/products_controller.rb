class WxProgram::ProductsController < ApplicationController
  def get_products_by_category_id
    category_id = params[:category_id]

    if category_id.blank?
      
    end
    
    products = Category.get_products_by_id!(category_id)
    @products = products.map do |product|
                  image_url = product.product_images.blank? ?
                    '' : product.product_images.first.image_url
                  {
                    product: product,
                    product_image_url: image_url
                  }
                end
  end

  def product_detail
    product_id = params[:product_id]
    
    product = Product.find_by(:id => product_id)
    
    if product.blank?
      
    end

    @product = {
      product: product,
      product_images: product.product_images
    }
  end
end
