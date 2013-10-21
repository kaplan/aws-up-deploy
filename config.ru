$LOAD_PATH.unshift 'lib'
# require File.expand_path '../lib/blog.rb', __FILE__

require 'yaml'

# this is optional
require 'rack/cache'
use Rack::Cache

# require 'blog'
run Blog