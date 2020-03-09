
class Triangle
  attr_accessor :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3].sort
    valid_triangle?
  end

  def valid_triangle?
    if @sides.any? {|side| side <= 0}
        raise TriangleError
    elsif @sides[0] + @sides[1] <= @sides[2]
        raise TriangleError
    end
  end

  def kind
      if (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
        :equilateral
      elsif (@sides[0] == @sides[1]) || (@sides[1] == @sides[2]) || (@sides[0] == @sides[2])
        :isosceles
      else
        :scalene
      end
  end

  class TriangleError < StandardError
  end
end
