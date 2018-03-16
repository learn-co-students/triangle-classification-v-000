class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    raise TriangleError if check_triangle? || @side_one < 0 || @side_two < 0 || @side_three < 0
    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
      :isosceles
    else
      :scalene
    end
  end

  def check_triangle?
    raise TriangleError if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one ||@side_one + @side_three <= @side_two
  end

end


class TriangleError < StandardError
end
