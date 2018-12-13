require 'sinatra'
require 'sinatra/reloader'
require './cake.rb'
require './cookie.rb'
require './muffin.rb'

register Sinatra::Reloader

get '/' do
  @chocolate = Cake.new('choccake.jpg', '(Pricing varies by type and amount)', 'cake blahhh blahh')
  @chocchip = Cookies.new('chocchip.jpeg', '(Pricing varies by type and amount)', 'cooooooooookies')
  @muffin = Muffin.new('muffins.jpg', '(Pricing varies by type and amount)', 'muffinsssss')
  erb :index
end

# @carrot = Cake.new('carcake.jpg', '$35', 'nskjn n kjsd knsd bnb kd')
# @vanilla = Cake.new('vancake.jpg', '$35', 'snlnsnklc kscj bjc bkc')
# @velvet = Cake.new()
# @spice = Cake.new()
