require 'sinatra/base'
require 'github_hook'
require 'ostruct'
require 'time'

class Blog < Sinatra::Base
  use GithubHook

  # File.expand_path generates an absolute path.
  # It also takes a path as a second argument.
  # The generated path is treated as being relative to that path.
  set :root, File.expand_path('../../', __FILE__)
  set :articles, []
  set :app_file, __FILE__

  # get('/') { markdown "# A Blog!" }

  # loop through all the article files
  Dir.glob "#{root}/articles/*.md" do |file|
    # parse meta data and content from file
    meta, content = File.read(file).split("\n\n", 2)

    # generate a metadata object
    article = OpenStruct.new YAML.load(meta)

    # convert the date to a time object
    article.date = Time.parse article.date.to_s

    # add the content
    article.content = content

    # generate a slug for the url
    article.slug = File.basename(file, '.md')

    # set up the route
    get "/#{article.slug}" do
      erb :post, :locals => { :article => article }
    end

    # add article to list of articles
    articles << article
  end

  # sort articles by date, display new articles first
  articles.sort_by! { |article| article.date }
  articles.reverse!

  get '/' do
    erb :index
  end
end

  # start the server if ruby file executed directly
  # run! if app_file == $0