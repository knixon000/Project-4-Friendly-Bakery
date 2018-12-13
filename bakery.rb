require 'sinatra'
require 'sinatra/reloader'
require './cake.rb'
require './cookie.rb'
require './muffin.rb'

register Sinatra::Reloader

get '/' do
  @chocolate = Cake.new('choccake.jpg', 'Cakes', '(Pricing varies by type and amount)')
  @chocchip = Cookies.new('chocchip.jpeg', 'Cookies', '(Pricing varies by type and amount)')
  @muffin = Muffin.new('muffins.jpg', 'Muffins', '(Pricing varies by type and amount)')
  erb :index
end

get '/cakes' do
  # @vanilla = Cake.new('vancake.jpg', '$35', 'snlnsnklc kscj bjc bkc')
  @redvelvet = Cake.new('redvelvet.jpg', 'Red Velvet','$3.50 per slice, $20.99 for 12in round')
  @bluevelvet = Cake.new('bluevelvet.jpg', 'Blue Velvet','$3.50 per slice, $20.99 for 12in round')
  @carrot = Cake.new('carcake.jpg', 'Carrot Cake', '$3.50 per slice')
  # @spice = Cake.new()
  erb :cakes
end

get '/cookies' do
  # @vanilla = Cake.new('vancake.jpg', '$35', 'snlnsnklc kscj bjc bkc')
  @chocchip2 = Cake.new('chocchip2.jpeg', 'Chocolate Chip','$1.50 per cookie')
  @pb = Cake.new('pb.jpeg', 'Peanut Butter','$1.50 per cookie')
  @iced = Cake.new('iced.jpg', 'Iced Oatmeal','$1.50 per cookie')
  # @spice = Cake.new()
  erb :cookies
end

get '/muffins' do
  @chocchip2 = Cake.new('chocchip2.jpeg', 'Chocolate Chip','$2.50 per muffin')
  @pb = Cake.new('pb.jpeg', 'Peanut Butter','$2.50 per muffin')
  @iced = Cake.new('iced.jpg', 'Iced Oatmeal','$2.50 per muffin')
  erb :muffins
end
