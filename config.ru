require File.join(File.dirname(__FILE__), 'app.rb')

class ::Logger; alias_method :write, :<<; end
run Rack::URLMap.new('/' => Clock::API.new, '/docs' => Raddocs::App.new)
