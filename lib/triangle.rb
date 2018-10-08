class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3
  end
  
  def kind 
    if side3 <= 0 || side2 <= 0 || side1 <= 0
      raise TriangleError
    end
    
    if (side3 + side2 <= side1) ||  (side1 + side2 <= side3) || (side1 + side3 <= side2)
      raise TriangleError
    end
    
    if side3 == side2 && side3 == side1
      :equilateral
    elsif side3 == side2 || side3 == side1 || side1 == side2
     :isosceles
   else
     :scalene
  end
end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
