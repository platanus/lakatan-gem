require 'simplecov'
require 'coveralls'

formatters = [SimpleCov::Formatter::HTMLFormatter, Coveralls::SimpleCov::Formatter]
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter::new(formatters)

SimpleCov.start do
  add_filter { |src| src.filename !~ /lib/ }
  add_filter "spec.rb"
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lakatan"
require "pry"
require "vcr"

Lakatan.setup do |config|
  config.site_url = "https://lakatan.dev"
  config.url_prefix = "/api/v1/bearers/"
  config.authorization_token = "xxx"
end

path = [File.dirname(__FILE__), "support", "**", "*.rb"]
Dir[File.join(path)].sort.each { |f| require f }

VCR.configure do |config|
  config.cassette_library_dir = "./spec/cassettes"
  config.hook_into :webmock
  config.ignore_localhost = false
  config.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.include TestHelpers
end
