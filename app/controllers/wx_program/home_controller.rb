class WxProgram::HomeController < WxProgram::BaseController
  def home_info
    @home_info = {
      banner_list: banner_list,
      recommend_product_list: recommend_product_list
    }

    render status: :ok
  end
  
  private

  def banner_list
    Banner.all_banner
  end

  def recommend_product_list
    Product.recommend_products
  end
end
