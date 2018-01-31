class Triangle
  attr_accessor :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [@side1, @side2, @side3].sort
    if sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides[0] < 0
      raise TriangleError
    elsif sides[0] == sides[1] && sides[1] == sides[2]
      :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end
  end
end


class TriangleError < StandardError

end
