Rails.application.routes.draw do
  
  #Root Route
  root 'customers#index'

  #Inventory Routes
  get 'inventories' => 'inventories#index', as: :inventories
  get 'inventories/:id/edit' => 'inventories#edit', as: :edit_inventory
  get 'inventories/new' => 'inventories#new', as: :new_inventory
  put 'inventories/:id' => 'inventories#update'
  patch 'inventories/:id' => 'inventories#update', as: :udpate_inventory
  delete 'inventories/:id' => 'inventories#destroy', as: :inventory
  post 'inventories' => 'inventories#create'
  
  #Customer Routes
  get 'customers/' => 'customers#index' 
  get 'customers/new' => 'customers#new'
  post 'customers' => 'customers#create'
  get 'customers/home' => 'customers#home', as: :home_customers

  #Session Routes
  resource :sessions, only: [:new, :create, :destroy]
  delete 'sessions/new' => 'sessions#destroy'

  #Order Routes
  get 'orders' => 'orders#index'
  get 'orders/new' => 'orders#new'
  get 'orders/edit' => 'orders#edit'
  get 'orders/:id' => 'orders#show', as: :customer
  post 'orders' => 'orders#create' 
  delete 'orders/:id' => 'orders#destroy', as: :cancel
  

  resource :orders
  # , only: [:new, :create, :destroy, :edit]








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
  
end
