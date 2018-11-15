class WxProgram::CategoriesController < WxProgram::BaseController
  def categories
    @categories = Category.all

    render status: :ok
  end
end
