require "ddtrace"

require "webmock/test_unit"
WebMock.disable_net_connect!

module Unit
  class DatadogTest < ::Test::Unit::TestCase
    def test_configure_sends_external_request
      stub = stub_request(:post, "http://127.0.0.1:8126/telemetry/proxy/api/v2/apmtelemetry")

      Datadog.configure do |c|
        # Do nothing!
      end

      assert_not_requested stub
    end
  end
end
