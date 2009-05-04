# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Asgard2_session',
  :secret      => '338babd49ec8d40babeca9423ad97e1d3cfdff405e79c477964ea25bb2295f63d5438377c0a96e57fa6a02dc74b25392217ffa2a66afdc37b1440200ef313553'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
