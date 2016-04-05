ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup' #require bundler; needed to load gems in Gemfile
Bundler.require #command bundler to load gems in Gemfile 

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app' #load all files in app (i.e., MVC files)
#require_all 'public' #load all files in public (i.e., CSS, JS, images)
