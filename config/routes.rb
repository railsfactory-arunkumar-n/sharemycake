Sharemycake::Application.routes.draw do
 
  get "celebrent/myevent" => "celebrent#myevent" , :as => "celebrent_myevent"
  get "celebrent/dash_board"=> "celebrent#dash_board" , :as => 'celebrent_dash_board'
  get "celebrent/create_event" => "celebrent#create_event" , :as=> 'celebrent_create_event'
  get "invitation/myevent"=>"invitation#myevent" , :as => 'invetation_my_event'
  get "invitation/dash_board" => "invitation#dash_board" ,:as => 'invitation_dash_board'
  get "invitation/create_event" => 'invitation#create_event' , :as => 'invitation_create_event'
  get "admin/payment"
  get "admin/event"
  get "admin/org"
  get "admin/dash_board" => "admin#dash_board" , :as => "admin"
  #~ devise_for :users,  :sessions => "mysession"  ,:as => "sessions"
  resources :events 
  #~ get "events/new" => 'events#new' , :as => "new_event"
  #~ post "events/create" => 'events#create' , :as => "events" 
  post "events/choose_cause" => "events#choose_cause" , :as => "new_event_create"
   get "events/choose_org/:id" => "events#choose_org" , :as => "choose_org"
  post "events/email_template" => "events#email_template" , :as => "email_template"
  post "events/add_contact" => "events#add_contact" , :as => "add_contact"
  post "events/:id/index_page" => "events#index_page" , :as => "index_page"
  get "events/dash_board" => "events#dash_board" , :as => "dash_board_path"
  devise_for :users
  get "home/index"
  get "home/show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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
