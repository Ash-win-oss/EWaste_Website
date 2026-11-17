require_relative "boot"

# This site has no database, so only the frameworks it needs are loaded.
require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module EwasteSite
  class Application < Rails::Application
    config.load_defaults 7.1
    config.time_zone = "Eastern Time (US & Canada)"
  end
end
