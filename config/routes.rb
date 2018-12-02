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

    resources :users, :only => [] do
      collection do
        post :login
      end
    end
  end

  resources :user_addresses, :only => [] do
    collection do
      post :add_address
      post :modify_address
      post :delete_address
      post :list_addresses
      post :show_address
    end
  end

  resources :areas, :only => [] do
    collection do
      get :provinces
      get :cities
      get :districts
    end
  end

end
