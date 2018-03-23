class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [@side_1, @side_2, @side_3]
  end

  def sides
    @sides
  end

  def is_a_triangle?
    self.sides.sort!
    self.sides.all? { |side| side > 0 } && self.sides[0] + self.sides[1] > self.sides[2] ? true : false
  end

  def kind
    if self.is_a_triangle? == true
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError, "A triangle must have three sides with lengths greater than zero, and must satisfy the triangle inequality theorem."
    end
  end


end

class TriangleError < StandardError
end
