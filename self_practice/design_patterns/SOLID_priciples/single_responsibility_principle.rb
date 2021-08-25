#The single responsibility principle state that each class should have only one job to do
#In the below example the each class is doing only one job

class Square
  attr_accessor :length

  @length

  def initialize(length)
    @length = length
  end
end

class Circle
  attr_accessor :radius

  @radius

  def initialize(radius)
    @radius = radius
  end
end

class AreaCalculator
  attr_accessor :shapes

  @shapes

  def initialize(shapes)
    @shapes = shapes
  end

  def sum
    @shapes.each do |shape|
      if shape.is_a?(Square)
        area << shape.length ** 2
      elsif shape.is_a?(Circle)
        area << Math::PI * shape.radius ** 2
      end
    end

    area.sum
  end
end