require 'pry'

class Triangle

  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    # binding.pry
    if @sides[0] <= 0 || @sides[0] + @sides[1] <= @sides[2] || @sides[0] + @sides[2] <= @sides[1] || @sides[1] + @sides[2] <= @sides[0]
      raise TriangleError
    elsif @sides[0] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
