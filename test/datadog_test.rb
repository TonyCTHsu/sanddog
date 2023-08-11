require "minitest/autorun"
require "ddtrace"
require "pry"

require "webmock/minitest"
WebMock.disable_net_connect!

class DatadogTest < Minitest::Test
  def test_configure_sends_external_request
    stub = stub_request(:post, "http://127.0.0.1:8126/telemetry/proxy/api/v2/apmtelemetry")

    Datadog.configure do |c|
      # Do nothing!
    end

    assert_not_requested stub
  end
end
