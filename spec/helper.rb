require 'grape'
require 'rack/test'
require 'rspec'

require_relative '../app'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Rack::Builder.new {
    map '/' do
      run Clock::API
    end
  }.to_app
end

RspecApiDocumentation.configure do |config|
  config.format    = [:json, :wurl, :combined_text]
  config.app       = app
  config.curl_host = 'http://localhost:9292'
  config.api_name  = 'Clock API'
  config.keep_source_order = true
end
