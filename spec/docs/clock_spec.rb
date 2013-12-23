require 'helper'
require 'rspec_api_documentation/dsl'

resource 'Clock' do
  get '/v1/time' do
    example_request 'Fetch the current time' do
      status.should == 200
    end
  end
end
