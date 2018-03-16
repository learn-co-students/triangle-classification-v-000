class Triangle
  # triangle code
  attr_accessor :tri_side_one, :tri_side_two, :tri_side_three

  def initialize(tri_side_one, tri_side_two, tri_side_three)
    @tri_side_one = tri_side_one
    @tri_side_two = tri_side_two
    @tri_side_three = tri_side_three
  end

  def kind
    if @tri_side_one == 0 || @tri_side_two == 0 || @tri_side_three == 0
      raise TriangleError
    elsif @tri_side_one + @tri_side_two <= @tri_side_three || @tri_side_three + @tri_side_one <= @tri_side_two || @tri_side_three + @tri_side_two <= @tri_side_one
      raise TriangleError
    elsif @tri_side_one == @tri_side_two && @tri_side_one == @tri_side_three && @tri_side_three == @tri_side_two
      return :equilateral
    elsif @tri_side_one == @tri_side_two || @tri_side_one == @tri_side_three || @tri_side_two == @tri_side_three
      return :isosceles
    else
      return :scalene

    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
