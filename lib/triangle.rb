class Triangle

  attr_accessor :side_a, :side_b, :side_c, :sides

  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides = [side_a, side_b, side_c]
  end

  def kind
    if @sides.any? {|side| side <= 0}
      raise TriangleError
    elsif @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_c + @side_b <= @side_a
      raise TriangleError
    elsif  @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      :isosceles
    else
      :scalene
    end
  end
  # write code here
end

class TriangleError < StandardError
 # triangle error code
end
