ActionController::Routing::Routes.draw do |map|
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.resources :user_sessions

  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.resources :patients, :active_scaffold => true
  map.resources :personal_datas, :active_scaffold => true
  map.resources :visits, :active_scaffold => true  
  map.resources :endoscopic_tests, :active_scaffold => true
  map.resources :citology_tests, :active_scaffold => true
  map.resources :laboratory_blood_tests, :active_scaffold => true
  map.resources :objective_datas, :active_scaffold => true
  map.resources :doctoral_conclusions, :active_scaffold => true
  map.resources :metadatas, :active_scaffold => true
  map.root :controller => "patients"
#  map.login "login", :controller => user_sessions, :action => new
#  map.login "logout", :controller => user_sessions, :action => destroy
end
