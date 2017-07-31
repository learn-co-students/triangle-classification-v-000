class Triangle

  def initialize(side_a, side_b, side_c)
    @sides = [side_a, side_b, side_c]
  end

  def kind
    raise TriangleError if @sides.any? {|x| x <= 0} || @sides.sort[0] + @sides.sort[1] <= @sides.sort[2]

    if @sides.all? {|x| x == @sides.first}
      :equilateral
    elsif @sides.sort[0] == @sides.sort[1] || @sides.sort[1] == @sides.sort[2]
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
