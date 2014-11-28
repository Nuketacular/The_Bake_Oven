Rails.application.routes.draw do
  root to: 'home#index'
  get 'product', to: 'product#index', as: 'product'
  get 'bakery_product', to: 'product#bakery_products', as: 'bakery_product'
  get 'import_product', to: 'product#import_products', as: 'import_product'
  get 'deli_product', to: 'product#deli_products', as: 'deli_product'
  get 'giftware_product', to: 'product#giftware_products', as: 'giftware_product'
  get 'new_product', to: 'product#new_products', as: 'new_product'
  get 'sale_product', to: 'product#sale_products', as: 'sale_product'
  get 'about_us', to: 'about_us#index', as: 'about_us'
  get 'contact_us', to: 'contact_us#index', as: 'contact_us'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'products/:id', to: 'product#show_products', as: 'show_products'
  get 'search_results', to: 'product#search_results', as: 'search_results'
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
