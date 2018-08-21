require_relative 'boot'

require 'rails/all'

require 'ddtrace'
Datadog.configure do |c|
  # Configure the tracer here.
  # Activate integrations, change tracer settings, etc...
  # By default without additional configuration, nothing will be traced.
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProjectTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
