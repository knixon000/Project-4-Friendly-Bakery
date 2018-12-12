require 'sinatra'
require 'sinatra/reloader'
require './cake.rb'

register Sinatra::Reloader

get '/' do
  @chocolate = Cake.new('cake.jpg', '$35', 'cake blahhh blahh')
  # @carrot = Cake.new()
  # @vanilla = Cake.new()
  # @velvet = Cake.new()
  # @spice = Cake.new()
  erb :index
end
