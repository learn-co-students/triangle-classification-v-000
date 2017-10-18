class Triangle
  # write code here
  attr_accessor :side_A, :side_B, :side_C

  def initialize(side_A ,side_B ,side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
  end

  def kind
    #binding.pry
    if(side_A <= 0 || side_B <= 0 || side_C <= 0) ||
      ((side_A + side_B) <= side_C) ||
      ((side_B + side_C) <= side_A) ||
      ((side_C + side_A) <= side_B)
      raise TriangleError
    elsif (side_A == side_B) && (side_B == side_C) && (side_C == side_A)
      :equilateral
    elsif (side_A == side_B) || (side_B == side_C) || (side_C == side_A)
      :isosceles
    else
      :scalene
    end
  end


end

class TriangleError < StandardError
  def self.message
    "These measurements are not valid for a triangle!"
  end
end
