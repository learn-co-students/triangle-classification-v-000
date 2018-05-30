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
      "Invalid triangle: remember that side lengths have to be higher than zero, and the sum of any two sides cannot exceed the third"
    end
  end
end
