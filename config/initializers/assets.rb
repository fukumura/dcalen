# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(fullcalendar.3.1.0.js)
Rails.application.config.assets.precompile += %w(moment.2.10.6.ja.js)
Rails.application.config.assets.precompile += %w(moment.2.10.6.js)
Rails.application.config.assets.precompile += %w(jquery.3.1.1.js)
