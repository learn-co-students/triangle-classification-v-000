class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if
      (side_1 == 0 || side_2 == 0 || side_3 == 0) ||
      (side_1 < 0 || side_2 < 0 || side_3 < 0 ) ||
      (side_1 >= side_2 + side_3 || side_2 >= side_1 + side_3 || side_3 >= side_1 + side_2)
      raise TriangleError
    elsif
      side_1 == side_2 && side_1 == side_3
      type = :equilateral
    elsif
      side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      type = :isosceles
    else
      type = :scalene
    end
  end
end

class TriangleError < StandardError
  #error code
end
