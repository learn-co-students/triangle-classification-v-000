require 'pry'

class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    raise TriangleError unless @side_1 > 0 and @side_1 + @side_2 > @side_3 and @side_2 + @side_3 > @side_1 and @side_1 + @side_3 > @side_2

    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral #always has equal sides

      elsif @side_1 == @side_2 && @side_1 != @side_3 || @side_2 == @side_3 && @side_2 != @side_1 || @side_1 == @side_3 && @side_1 != @side_2
      :isosceles #any two sides are equal but never three sides

    elsif @side_1 != @side_2 && @side_2 != @side_3
      :scalene #never has equal sides
    end
  end
end




class TriangleError < StandardError
  # triangle error code
end
