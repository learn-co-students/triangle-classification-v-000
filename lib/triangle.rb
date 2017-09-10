class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1 = 0,side_2 = 0,side_3 = 0)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    triangle_valid?
    if side_1 != side_2 && side_1 != side_3 && side_2 != side_3
      :scalene
    elsif side_1 == side_2 && side_2 == side_3
      :equilateral
    else
      :isosceles
    end
  end

  def triangle_valid?
    sides = [side_1, side_2, side_3]
    triangle = [ (side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1) ]
    sides.each do |side|
      triangle << false if side <= 0
    end
    raise TriangleError if triangle.include?(false)
  end
end

class TriangleError < StandardError
  def message
    "Uh Oh! You've managed to create an illegal triangle. Please try again."
  end
end
