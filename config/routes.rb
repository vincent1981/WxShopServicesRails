Rails.application.routes.draw do
  namespace :wx_program do
    resources :home, :only => [] do
      collection do
        get :home_info
      end
    end

    resources :products, :only => [] do
      collection do
        get :get_products_by_category_id
        get :product_detail
      end
    end
  end
end
