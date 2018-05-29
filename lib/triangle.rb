# no side lengths <= zero, sum of any two sides must exceed the third 

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    # types = :equilateral, :isosceles, :scalene
  end
  
  class TriangleError < StandardError
    
  end
end
