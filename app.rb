require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end



get '/about' do
  erb :about
end

get '/about' do
  erb :view_name
end

get '/' do
  @usernames = [ "ssaunier", "Papillard" ]
  erb :index
end
