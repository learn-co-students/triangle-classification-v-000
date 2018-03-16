class Triangle

  attr_accessor :equilateral, :isosceles, :scalene 
  attr_reader :side1, :side2, :side3 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

    # if side1 != (> 0) || side2 != (> 0) || side3 != (> 0) 
    #   raise TriangleError
    # if (side1 + side2) != (> side3) || (side2 + side3) != (> side1) || (side3 + side1) != (> side2)
    #   raise TriangleError

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0 
      raise TriangleError
    elsif (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2
      raise TriangleError
    elsif side1 == side2 && side2 == side3 
      :equilateral
    elsif (side1 == side2 && side1 > side3) || (side2 == side3 && side2 > side1) || (side3 == side1 && side3 > side2)
      :isosceles
    elsif side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    else  
    end 
  end 
end

class TriangleError < StandardError
  # def triangle_error 
end 