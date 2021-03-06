Grushenka::Application.routes.draw do
  get "store/index"
  resources :products do
    get :who_bought, on: :member
  end

  # get 'admin' => 'admin/index'
  match "admin" => "admin#index", :as => :admin
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  resources :orders

  resources :line_items

  resources :carts

  resources :audios


  get "pages/home"

  get "pages/about"

  get "pages/music"

  get "pages/video"

  get "pages/photos"

  get "pages/photo01"

  get "pages/photo02"

  get "pages/photo03"

  get "pages/photo04"

  get "pages/gigs"

  get "pages/contact"

  get "pages/mailing_list"

  get "pages/shop"

  get "store/index"

  get "new/user"

  get "public/audios"


  # get "pages#home"

  # match "audios" => "pages#music", :as => :audios

  resources :products do
    get :who_bought, on: :member
  end


  get "products/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home', as: 'index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
