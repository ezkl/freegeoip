require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :faraday
  c.configure_rspec_metadata!
end

require File.expand_path(File.dirname(__FILE__) + '/../lib/freegeoip')

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.mock_framework = :rspec
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
