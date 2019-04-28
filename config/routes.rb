Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount_devise_token_auth_for 'User', at: 'auth'

    namespace :v1, defaults: {format: :json} do
      resources :products
    end

    namespace :admin, defaults: {format: :json} do
      resources :products
      resources :brands
      resources :categories
    end
end
