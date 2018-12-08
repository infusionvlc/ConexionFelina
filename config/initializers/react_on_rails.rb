# frozen_string_literal: true

ReactOnRails.configure do |config|
  config.node_modules_location = "app/javascript"

  config.webpack_generated_files = %w[ ui-bundle.js ui-bundle.css]

  config.build_test_command = "yarn run build:test"
  config.build_production_command = "yarn run build:production"

  config.prerender = false

  config.trace = Rails.env.development?

  config.development_mode = Rails.env.development?

  config.logging_on_server = false

end
