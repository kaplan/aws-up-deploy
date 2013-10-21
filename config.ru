$LOAD_PATH.unshift 'lib'

require 'yaml'

# this is optional
require 'rack/cache'
use Rack::Cache

require 'blog'
run Blog