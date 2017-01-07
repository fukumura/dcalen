require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Dcalen
  class Application < Rails::Application
  end
end
