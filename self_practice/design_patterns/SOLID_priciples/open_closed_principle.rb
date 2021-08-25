# The open closed principle states that each class or object should be open for extension but closed for modifications
# let's say that we want to add another shape other than the circle and the square
# then we will need to put more if conditions in the shapes class wich violates the open closed principle
# a better solution is to implement the method area in each class on its own like the example blow
# bs fel 7ala dyh another problem arises, how do you know that the object passed into the AreaCalculator is actually a shape or if the shape has a method named area
# Coding to an interface is an integral part of solid

module Shape
  def area
  end
end

class Square
  include Shape

  attr_accessor :length

  @length

  def initialize(length)
    @length = length
  end

  def area
    @length ** 2
  end
end

class Circle
  include Shape

  attr_accessor :radius

  @radius

  def initialize(radius)
    @radius = radius
  end

  # def area
  #   Math::PI * @radius ** 2
  # end
end

class AreaCalculator
  attr_accessor :shapes

  @shapes

  def initialize(shapes)
    @shapes = shapes
  end

  def sum
    area = []
    @shapes.each { |shape| area << shape.area }
    area.inject(0) { |sum, ar| sum + ar }
  end
end

# #area = 4
# square = Square.new(2)
# #area = 12.56636
# circle = Circle.new(2)

# area_calculator = AreaCalculator.new([square,circle])
# puts area_calculator.sum