require 'bundler'
Bundler.require

$LOAD_PATH.unshift 'lib'
use Rack::Cache

require 'yaml'
require 'blog'
run Blog