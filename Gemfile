source 'http://rubygems.org'

gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-contrib', require: 'sinatra/reloader', require: 'sinatra/config_file'
gem 'sinatra-assetpack', require: 'sinatra/assetpack'
gem 'rack-cache', require: 'rack/cache'
gem 'coffee-script'
gem 'compass'
gem 'execjs'
gem 'sass'

group :development do
  gem "thin", "~> 1.5.1"
  # gem 'thin'
end

group :production do
  gem 'unicorn'
end