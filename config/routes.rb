Rails.application.routes.draw do
  get 'registration/form'

  get 'top' => 'home#top'
  get 'about' => 'home#about'

  get 'registration' => 'registration#form'
  post 'registration/register' => 'registration#register'

  get 'rooms/join/search' => 'rooms#search'
  get 'rooms/find' => 'rooms#find'
  get 'rooms/join/enter' => 'rooms#enter'
  get 'rooms/new' => 'rooms#new'
  post 'rooms/create' => 'rooms#create'
  get 'rooms/:id/select' => 'rooms#select'
  post 'rooms/:id/click' => 'rooms#click'
  post 'rooms/:id/click1' => 'rooms#click1'
  post 'rooms/:id/click2' => 'rooms#click2'
  post 'rooms/:id/click3' => 'rooms#click3'
  post 'rooms/:id/click4' => 'rooms#click4'
  post 'rooms/:id/click5' => 'rooms#click5'
  post 'rooms/:id/click6' => 'rooms#click6'
  post 'rooms/:id/click7' => 'rooms#click7'
  post 'rooms/:id/click8' => 'rooms#click8'
  post 'rooms/:id/click9' => 'rooms#click9'
  post 'rooms/:id/click10' => 'rooms#click10'
  post 'rooms/:id/click11' => 'rooms#click11'
  get 'rooms/:id/result_1_2' => 'rooms#result'
  get 'rooms/:id/result_1_4' => 'rooms#result1'
  get 'rooms/:id/result_1_6' => 'rooms#result2'
  get 'rooms/:id/result_1_8' => 'rooms#result3'
  get 'rooms/:id/result_2_1' => 'rooms#result4'
  get 'rooms/:id/result_2_3' => 'rooms#result5'
  get 'rooms/:id/result_2_5' => 'rooms#result6'
  get 'rooms/:id/result_2_7' => 'rooms#result7'
  get 'rooms/:id/result_3_2' => 'rooms#result8'
  get 'rooms/:id/result_3_4' => 'rooms#result9'
  get 'rooms/:id/result_3_6' => 'rooms#result10'
  get 'rooms/:id/result_3_8' => 'rooms#result11'
  get 'rooms/:id/menu' => 'rooms#menu'
  get 'rooms/:id/share' => 'rooms#share'
  get 'rooms/:id/photo' => 'rooms#photo'
  post 'rooms/:id/destroy' => 'rooms#destroy'
  post 'rooms/:id/destroy1' => 'rooms#destroy1'
  post 'rooms/:id/destroy2' => 'rooms#destroy2'
  post 'rooms/:id/destroy3' => 'rooms#destroy3'
  post 'rooms/:id/destroy4' => 'rooms#destroy4'
  post 'rooms/:id/destroy5' => 'rooms#destroy5'
  post 'rooms/:id/destroy6' => 'rooms#destroy6'
  post 'rooms/:id/destroy7' => 'rooms#destroy7'
  post 'rooms/:id/destroy8' => 'rooms#destroy8'
  post 'rooms/:id/destroy9' => 'rooms#destroy9'
  post 'rooms/:id/destroy10' => 'rooms#destroy10'
  post 'rooms/:id/destroy11' => 'rooms#destroy11'
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
