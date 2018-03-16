class Triangle
  attr_reader :sides

  def initialize( side1, side2, side3 )
    @sides = []
    @sides[0] = side1
    @sides[1] = side2
    @sides[2] = side3
  end

  def kind
      test_triangle
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        :equilateral
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
        :isosceles
      else
        :scalene
      end
    end
  end

  def test_triangle
    test_ineq = @sides[0] >= (@sides[1] + @sides[2]) || @sides[1] >= (@sides[0] + @sides[2]) || @sides[2] >= (@sides[0] + @sides[1])
    if @sides.any?{|side| side == 0} || @sides.any?{|side| side < 0} || test_ineq
      raise TriangleError
    else
  end

end

class TriangleError < StandardError
end
