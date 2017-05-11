$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'tunnelup'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.filter_sensitive_data('<API_TOKEN>') { ENV['API_TOKEN'] }
end

Tunnelup.configure do |config|
  config.api_token = ENV['API_TOKEN']
end
