require "ddtrace"

RSpec.describe do
  it do
    stub = stub_request(:post, "http://127.0.0.1:8126/telemetry/proxy/api/v2/apmtelemetry")

    Datadog.configure do |c|
      # Do nothing!
    end

    expect(stub).not_to have_been_requested
  end
end
