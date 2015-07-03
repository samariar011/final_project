class Exercise 
  
  attr_accessor :name, :duration, :image, :image_height, :image_width
  
  def initialize(name, duration, image)
    @name = name
    @duration = duration
    @image = image
    @image_height = "300px"
    @image_width = "400px"
  end
end