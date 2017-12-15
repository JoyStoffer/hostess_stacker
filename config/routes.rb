Rails.application.routes.draw do
  root 'users#new'

  #New User
  get 'register'                    => 'users#new',             as: 'new_register'
  get 'users/new'                   => 'users#new'

  #Create User
  post 'register'                   => 'users#create',          as: 'register'
  post 'users'                      => 'users#create'

  #Show User
  get 'user/:id'                    => 'users#show',            as: 'user'

  #New Log in
  get 'login'                       => 'sessions#new',          as:'new_login'
  get 'sessions/new'                => 'sessions#new'

  #Login
  post 'login'                      => 'sessions#create',       as:'login'
  post 'sessions'                   => 'sessions#create'

  #Logout
  delete 'logout'                   => 'sessions#destroy',      as: 'logout'
  delete 'sessions'                 => 'sessions#destroy'

  #New product create landing page after login
  get 'products/new'                    => 'products#new',             as: 'new_products'
  get 'products'                        => 'products#show',            as: 'show_products'
  post 'products'                       => 'products#create',          as: 'create_product'
  delete 'products'                     => 'products#destroy',         as: 'delete_product'

  post 'category'                       => 'categories#create',        as: 'create_category'
  delete 'category'                     => 'categories#destroy',       as: 'delete_category'

  post 'pattern'                        => 'patterns#create',          as: 'create_pattern'
  delete 'pattern'                      => 'patterns#destroy',         as: 'delete_pattern'

  post 'productdescs'                   => 'product_descs#create',     as: 'create_productdesc'
  get  'catalogproducts'                => 'product_descs#show',       as: 'show_productdesc'
  delete 'productdescs'                 => 'product_descs#destroy',    as: 'delete_productdesc'

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
