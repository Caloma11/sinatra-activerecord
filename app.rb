require_relative "config/application"

require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'


get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/:id" do
  # params -->  {"id"=>"23"}
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

get "/restaurants/new" do
  erb :new
end


post "/restaurants" do

  # Use binding.pry if you want to check your params on the terminal
  # params => {"name"=>"Sikha", "address"=>"Canggu"}

 new_restaurant = Restaurant.new

 new_restaurant.name = params[:name]

 new_restaurant.address = params[:address]

 new_restaurant.save

 redirect '/'

end
