Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      resources :products do
      end

      resources :categories do
        member do
          get 'category_products' 
        end
      end

      resources :carts do
        collection do
          post 'add_product'
        end
      end

      resources :users do
        member do
          get 'get_cart'
        end
        collection do
          get 'form_authenticity_token'
        end
      end

      resources :sessions
    end
  end
end
