# this states that a child should be able to inherit from the parent and that it should make sense!
# for example a class dog can inherit from animal class
#on the other hand a dog can't inherit from the bird class because for example the animal class doesn't have a property called wings_color for ex as below

class Animal
  attr_accessor :legs_number

  @legs_number

  def initialize(legs_number)
    @legs_number = legs_number
  end

  def to_s
    "Legs Number = #{@legs_number}"
  end
end

class Dog < Animal
  attr_accessor :name

  def initialize(name, legs_number)
    super(legs_number)
    @name = name
  end

  def to_s
    "Name = #{@name}"
  end
end

dog = Dog.new("Elli", 4)
puts dog
puts dog.legs_number