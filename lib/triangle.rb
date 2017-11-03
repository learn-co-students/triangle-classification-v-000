class Triangle

  attr_accessor :side_one, :side_two, :side_three, :kind

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
        raise TriangleError
    elsif @side_one == @side_two && @side_one == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_three == @side_two
      :isosceles
    elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      :scalene
    else
      nil
    end
  end
end

class TriangleError < StandardError
# triangle error code
end
