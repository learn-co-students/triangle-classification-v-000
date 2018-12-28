class Triangle
  attr_accessor :side_A, :side_B, :side_C
  
  def initialize(side_A, side_B, side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
  end

  def kind
    if ((side_A + side_B) <= side_C) || ((side_B + side_C) <= side_A) || ((side_A + side_C) <= side_B) || (side_A <= 0) || (side_B <= 0) || (side_C <= 0) 
      raise TriangleError
      
    elsif (side_A == side_B) && (side_A == side_C)
      :equilateral
    elsif (side_A == side_B) || (side_A == side_C) || (side_B == side_C)
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end

end
