# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.config.hosts << "flyingengineering.com"
Rails.application.config.hosts << "www.flyingengineering.com"