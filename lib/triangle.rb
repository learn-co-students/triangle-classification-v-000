class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @s_one = side_one
    @s_two = side_two
    @s_three = side_three
  end

  def kind
    if (@s_one * @s_two * @s_three) == 0 || (@s_one + @s_two) <= @s_three || (@s_two + @s_three) <= @s_one || (@s_one + @s_three) <= @s_two
      begin
        raise TriangleError
        puts error.message
      end
    elsif @s_one == @s_two && @s_one == @s_three
      return :equilateral
    elsif @s_one != @s_two && @s_one != @s_three && @s_two != @s_three
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "not a triangle"
    end
  end
end
