require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
set :bind, '0.0.0.0'

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
  @recipes = [ ["gateau", "chocolat"], ["tarte", "pomme" ]]
  erb :index
end

post '/recipe' do
  "The recipe is #{params[:name]} and The description is #{params[:description]}."
end


