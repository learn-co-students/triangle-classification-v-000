class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError # each side must be larger than 0.
    elsif side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
      raise TriangleError # The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
    elsif side_1 == side_2 && side_1 == side_3 && side_2 == side_3
      :equilateral # equilateral triangles have equal sides
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      :isosceles # isosceles triangles have two equal sides
    elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
      :scalene # scalene triangles have no equal sides
    else
      false
    end
  end
end

class TriangleError < StandardError
  def message
    puts " triangle is invalid: The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Further, each side must be larger than 0."
  end
end
