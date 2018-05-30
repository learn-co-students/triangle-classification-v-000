# no side lengths <= zero, sum of any two sides must exceed the third 

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    
    # something for less than or equal to zero
    
    if side1 == side2 && side1 == side3
      # all sides equal
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      # two sides equal
      :isosceles
    else
      # no equal sides
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end
