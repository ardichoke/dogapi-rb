require 'test/unit'
require 'dogapi'
require 'time'

module TestBase

  def config_client_test_env
    @api_key = ENV['DATADOG_API_KEY']
    @app_key = ENV['DATADOG_APP_KEY']
    if not @api_key or not @app_key
      puts "\n"
      abort "To run tests in your environment, set 'DATADOG_API_KEY' and 'DATADOG_APP_KEY' to appropriate values for your account. Be aware that the tests will submit data, some of which won't be removed at the end.\n\n"
    end
  end

  def setup
    config_client_test_env()
  end

end

