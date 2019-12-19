Rails.application.routes.draw do

root :to => 'posts#index'

  # Routes for the Post layout resource:

  # CREATE
  match("/insert_post_layout", { :controller => "post_layouts", :action => "create", :via => "post"})
          
  # READ
  match("/post_layouts", { :controller => "post_layouts", :action => "index", :via => "get"})
  
  match("/post_layouts/:id_from_path", { :controller => "post_layouts", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_post_layout/:id_from_path", { :controller => "post_layouts", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_post_layout/:id_from_path", { :controller => "post_layouts", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  match("/insert_post", { :controller => "posts", :action => "create", :via => "post"})
          
  # READ
  match("/posts", { :controller => "posts", :action => "index", :via => "get"})
  
  match("/posts/:id_from_path", { :controller => "posts", :action => "show", :via => "get"})
  
  # UPDATE
  get("/posts/:prefill_with_id/edit", { :controller => "posts", :action => "edit_form" })
  match("/modify_post/:id_from_path", { :controller => "posts", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_post/:id_from_path", { :controller => "posts", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for signing up

  match("/user_sign_up", { :controller => "users", :action => "new_registration_form", :via => "get"})
  
  # Routes for signing in
  match("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  
  match("/user_verify_credentials", { :controller => "user_sessions", :action => "add_cookie", :via => "post"})
  
  # Route for signing out
  
  match("/user_sign_out", { :controller => "user_sessions", :action => "remove_cookies", :via => "get"})
  
  # Route for creating account into database 

  match("/post_user", { :controller => "users", :action => "create", :via => "post" })
  
  # Route for editing account
  
  match("/edit_user", { :controller => "users", :action => "edit_registration_form", :via => "get"})
  
  match("/patch_user", { :controller => "users", :action => "update", :via => "post"})
  
  # Route for removing an account
  
  match("/cancel_user_account", { :controller => "users", :action => "destroy", :via => "get"})




  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
