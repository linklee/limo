Rails.application.routes.draw do
  resources :texts
  resources :cars
  devise_for :users
  devise_for :models
  
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

  root  to: 'static_pages#home'
  get 'sedan' => 'static_pages#sedan'
  get 'suv' => 'static_pages#suv'
  get 'limo' => 'static_pages#limo'
  get 'classic' => 'static_pages#classic'
  get 'hummer' => 'static_pages#hummer'
  get 'rv' => 'static_pages#rv'

  get 'party-bus' => 'static_pages#bus'
  get 'classic-wedding' => 'static_pages#classic'
  get 'book' => 'static_pages#book'
  get 'fair-estimate' => 'static_pages#estimate'
  get 'payment' => 'static_pages#payment'
  post 'checkout' => 'static_pages#checkout'
  get 'success' => 'static_pages#success'
  get 'checkout_bus' => 'static_pages#checkout_bus'
  get 'wine-tours' => 'static_pages#wine_tours'
  get 'book-tour' => 'static_pages#book_wine_tours'

end
