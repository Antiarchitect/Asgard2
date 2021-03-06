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
end
