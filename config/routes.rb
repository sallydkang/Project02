Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  devise_for :users

  get '/journal' => 'journal#index'

  post '/journal' => 'journal#create'

  get '/journal/new' => 'journal#new', as: :new_journal

  get '/journal/:id/edit' => 'journal#edit', as: :edit_journal

  get '/journal/:id' => 'journal#show', as: :show_journal

  patch '/journal/:id' => 'journal#update', as: :patch_journal

  delete '/journal/:id' => 'journal#destroy', as: :destroy_journal

  get '/post' => 'post#index'

  post '/journal/:journal_id/post' => 'post#create', as: :create_post

  get '/journal/:journal_id/post/new' => 'post#new', as: :new_post

  get '/post/:id/edit' => 'post#edit', as: :edit_post

  patch '/post/:id' => 'post#update', as: :patch_post

  delete '/post/:id' => 'post#destroy', as: :destroy_post



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
