class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def isTriangle?
    if (side1.positive? && side2.positive? && side3.positive?) && (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
      true
    else
      raise TriangleError
    end
  end
  
  def kind
    isTriangle?
    
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 != side2 && side2 != side3 && side1 != side3
      :scalene 
    else 
      :isosceles
    end 
  end
  
  class TriangleError < StandardError
  end
  
end
