require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
also_reload('../models/*')

get "/" do
  erb(:index)
end

get "/films" do
  @film = Film.all()
  erb(:films)
end

get "/films/[:id]" do
  @film = Film.find_by_id(params[:id].to_i)
  erb(:details)
end
