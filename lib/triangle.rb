class Triangle
  # write code here

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  def triangle_inequality?
    sorted_sides = @sides.sort
    sorted_sides[2] >= sorted_sides[0] + sorted_sides[1]
  end

  def kind
    if (@sides.any? {|s| s <= 0}) || triangle_inequality?
      raise TriangleError
    else
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        return :equilateral
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[2] == @sides[0]
        return :isosceles
      else
        return :scalene
      end
    end

  end

end

class TriangleError < StandardError
end
