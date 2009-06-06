# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery :only => [:create, :update, :destroy] # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  ActiveScaffold.set_defaults do |config|
    config.actions.swap :search, :live_search
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
    config.list.per_page = 10
    config.theme = :blue
  end
  
  helper_method :current_user
  
  private

  def current_user_session
    return @current_user_session if defined?(@current_user_sesion)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
