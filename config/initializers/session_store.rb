# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_session_test_session',
  :secret      => 'ebaa7d05a5c44d180c1583e7da8e7676ce242eb66be6a113b28949aff1f7d98c7d685caaeba2fee09e822b35154be8ecda883f75c669e8425725d91c23fd38c7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
