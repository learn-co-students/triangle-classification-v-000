class Triangle
  attr_reader :hypotenuse, :adjacent, :opposite, :sides

  def initialize(hypotenuse, adjacent, opposite)
    @hypotenuse = hypotenuse
    @adjacent = adjacent
    @opposite = opposite
    @sides = [hypotenuse, adjacent, opposite].sort
  end

  def kind
    if invalid_triangle?
      raise TriangleError
    elsif sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  def invalid_triangle?
    sides.any? { |side| side <= 0 } || sides[0] + sides[1] <= sides[2]
  end
end

class TriangleError < StandardError
  def message
    "That's no triangle. Of that I'm sure."
  end
end
