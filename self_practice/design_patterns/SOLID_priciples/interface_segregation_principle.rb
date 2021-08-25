# let's say that we add the method volume to the module Shape
# Then the square class have to implement the volume method which is not right because the square can't have a volume as below
# on the other hand i can do another interface called ThreeDimensionalShapes and put the volume method inside as below

#this is WRONG
module Shape

  def area
  end

  def volume
  end

end


#THIS IS RIGHT
module Shape

  def area
  end

end

module ThreeDimensionalShape

  def volume
  end

end