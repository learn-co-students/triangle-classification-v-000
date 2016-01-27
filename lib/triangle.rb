class Triangle
  # write code here
  attr_accessor :sides

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    if (sides[0] <= 0 || sides[1] <= 0 || sides[2] <= 0) || sides.sort[2] * 2 >= sides[0] + sides[1] + sides[2]
      raise TriangleError
    elsif sides[0] == sides[1] && sides[1] == sides[2]
      :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
