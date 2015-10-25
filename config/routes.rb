Rails.application.routes.draw do
  
  resources :teams do
    resources :projects 
      member do
       get 'join', :action => 'join'
       get 'quit', :action => 'quit'
      end  
  end
  namespace :account do
    resources :teams
    resources :projects
  end

  resources :answer_requirement_qs

  resources :requirement_qs

  #get '/projects/:id/staffing', :controller => 'projects', :action => 'staffing'
  resources :true_false_questions

  
    
  #resources :projects do
  #  member do
    #  get 'staffing', :action => 'staffing'
   #   get 'questions', :action => 'questions'
   # end
 # end


  resources :mult_choice_questions

  resources :admin_tables

  resources :leader_tables

  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  


  get 'pages/about'

  get 'pages/contact'

  get 'pages/index'

  get 'pages/test'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  #root 'questions#index'

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
