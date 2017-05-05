# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
Rails.application.config.assets.precompile += %w( Spacelab.css )
Rails.application.config.assets.precompile += %w( bootstrap-social.css )