Rails.application.routes.draw do
  namespace :wxprogram do
    resources :home, :only => [] do
      collection do
        get :home_info
      end
    end
  end
end
