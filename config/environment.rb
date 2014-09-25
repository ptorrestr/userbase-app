# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
UserbasedApp::Application.initialize!

RouteTranslator.config do |config|
  config.force_locale = true
end

