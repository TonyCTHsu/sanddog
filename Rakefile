# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

namespace :test_datadog do
  desc "Test all datadog"
  task all: [
    :rspec,
    :minitest
    # :test_unit, # failing
    # :cucumber, # failing
  ]

  desc "Test datadog rspec"
  task :rspec do
    sh "bundle exec rspec spec/datadog_spec.rb"
  end

  desc "Test datadog minitest"
  task :minitest do
    sh "bundle exec ruby test/datadog_test.rb"
  end

  desc "Test datadog test-unit"
  task :test_unit do
    sh "bundle exec ruby test/run_test.rb"
  end

  desc "Test datadog cucumber"
  task :cucumber do
    sh "bundle exec cucumber"
  end
end
