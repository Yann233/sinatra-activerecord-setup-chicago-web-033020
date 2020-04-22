# We now have access to all of the gems that we need, but we still need to set up a connection to our database.
# Add the following block of code to your environment.rb file
# (underneath Bundler.require(:default, ENV['SINATRA_ENV'])).



ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
##########
configure :development do
  set :database, 'sqlite3:db/database.db'
end
############
require './app'
