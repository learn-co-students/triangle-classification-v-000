require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    total = @side_one + @side_two + @side_three
    if total == 0
      raise TriangleError
    elsif @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      raise TriangleError
    elsif total / 3 == @side_one && @side_two * 3 == total
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_three == @side_two || @side_three == @side_one
      :isosceles
    elsif @side_one != @side_two && @side_one != @side_three
      :scalene
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError

end
