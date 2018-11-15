module WxProgram::ProductsHelper
  def product_images_url(product_images)
    
    return [] if product_images.blank?
    product_images.map do |image|
      image.image_url
    end
  end
end
