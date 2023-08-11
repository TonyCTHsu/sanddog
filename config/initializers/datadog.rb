# Cucumber picks up this configuration when running `bundle exec rake cucumber`

Datadog.configure do |c|
  c.service = "SandDog"
  c.env = ::Rails.env
  c.version = `git rev-parse --short HEAD`

  c.tracing.instrument :rails
end
