class Cake
  attr_accessor :image, :price, :description
  def initialize(image, price, description)
    @image = image
    @price = price
    @description = description
  end
  # def show_cake
  #   return @image
  #   return @price
  #   return @description
  # end
end
