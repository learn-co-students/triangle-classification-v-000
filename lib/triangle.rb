class Triangle
  attr_reader :side1_length, :side2_length, :side3_length
  
  def initialize(side1_length, side2_length, side3_length)
    @side1_length = side1_length
    @side2_length = side2_length
    @side3_length = side3_length
  end
  
  def kind
    if side1_length < 0 || side2_length < 0 || side3_length < 0 || (side1_length + side2_length) <= side3_length || (side1_length + side3_length) <= side2_length || (side2_length + side3_length) <= side1_length
      raise TriangleError
    else
      if side1_length == side2_length && side2_length == side3_length
        :equilateral
      elsif side1_length == side2_length || side2_length == side3_length || side1_length == side3_length
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end