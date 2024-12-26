require_relative "boot"

require "rails/all"

#require 'r18n-desktop'
#
#R18n.from_env Rails.root.join('config', 'locales')
#R18n.set('ru')  # Set default locale


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StarTap
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

#module CentusRailsLocalization
# class Application < Rails::Application
#   config.i18n.available_locales = [:ru, :en]
#   config.i18n.default_locale = :ru
# end
#end