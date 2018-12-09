# frozen_string_literal: true

ReactOnRails.configure do |config|

  config.webpack_generated_files = %w[ ui-bundle.js ui-bundle.css]

  config.build_test_command = "RAILS_ENV=test bin/webpack"
  config.build_production_command = "RAILS_ENV=production NODE_ENV=production bin/webpack"

  config.prerender = false

  config.trace = Rails.env.development?

  config.development_mode = Rails.env.development?

  config.logging_on_server = false

end
