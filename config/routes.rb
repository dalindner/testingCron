Rails.application.routes.draw do
  
  resources :answer_tool_qs

  resources :tool_qs

  resources :answer_schedule_qs

  resources :schedule_qs

  resources :answer_location_qs

  resources :location_qs

  resources :answer_risk_qs

  resources :risk_qs

  resources :answer_about_the_project_qs

  resources :about_the_project_qs

  resources :answer_about_the_product_qs

  resources :about_the_product_qs

  resources :answer_about_the_team_qs

  resources :about_the_team_qs

  resources :answer_about_the_user_qs

  resources :about_the_user_qs

  resources :answer_about_the_client_qs

  resources :about_the_client_qs

  resources :teams do
    resources :projects 
      member do
       get 'join', :action => 'join'
       get 'quit', :action => 'quit'
       get '/remove/:id2', :action => 'kickout'
       get '/add/:id3', :action => 'addto'
       
      end  
  end

  namespace :account do
    resources :teams
    resources :projects
  end

  resources :projects do
    member do
      get 'finish', :action => 'finish'
      get 'questions', :action => 'questions'
      get 'determineModel', :action => 'determineModel'
      get 'accept_terms', :action => 'accept_terms'
    end
  end

  resources :schedulings do 
    member do
      get '/editEntry/:id2', :controller => 'schedulings', :action => 'editEntry'
      get '/clear/:id2', :controller => 'schedulings', :action => 'clear'
      get '/changeDates', :controller => 'schedulings', :action => 'changeDates'
    end
  end

  resources :cost_qs

  resources :answer_cost_qs

  resources :answer_requirement_qs

  resources :requirement_qs

  resources :true_false_questions

  resources :mult_choice_questions

  resources :admin_tables

  resources :leader_tables

  devise_for :users, :path_prefix => 'd'

  resources :users

  resources :products

  devise_scope :user do  
     get 'd/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  resources :usersA,  :controller => 'users'

  resources :users do
    member do
      get '/access/:id6', :action => 'access'
    end
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
