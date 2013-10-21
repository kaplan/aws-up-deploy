source 'https://rubygems.org'

gem "sinatra", require: "sinatra/base"
gem "rack-cache", require: "rack/cache"
gem 'sinatra-contrib', require: 'sinatra/reloader'
gem 'sinatra-assetpack', require: 'sinatra/assetpack'

gem "markdown", "~> 1.1.1"

group :development do
  gem "thin", "~> 1.5.1"
end

group :production do
  gem "unicorn"
end