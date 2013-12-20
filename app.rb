require 'rubygems'
require 'bundler'

APP_ENV = (ENV['RACK_ENV'] || 'development').to_sym
Bundler.require :default, APP_ENV

Raddocs.configure do |config|
  config.docs_dir = "docs"
end

module Clock
  class API < Grape::API

    version 'v1', using: :path, vendor: 'intridea'
    format :json

    desc 'return the current time in UTC'

    get 'time' do
      {time: Time.now.utc.to_s}
    end

  end
end
