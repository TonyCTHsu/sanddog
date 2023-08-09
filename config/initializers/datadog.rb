Datadog.configure do |c|
  c.service = "SandDog"
  c.env = ::Rails.env
  c.version = `git rev-parse --short HEAD`

  c.tracing.instrument :rails
end
