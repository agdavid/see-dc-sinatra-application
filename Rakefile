ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake' #require to get all ActiveRecord rake tasks

# Type `rake -T` on your command line to see the available rake tasks.

desc ‘console for my application’
task :console do
  Pry.start
end

