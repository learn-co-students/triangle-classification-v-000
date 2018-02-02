require "pry"
class Triangle

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    elsif @one + @two <= @three || @two + @three <= @one || @one + @three <= @two
      raise TriangleError
    elsif @one == @two && @two == @three
      return :equilateral
    elsif @one == @two || @two == @three || @one == @three
      return :isosceles
    else
      :scalene
    end

  end
end



class TriangleError < StandardError
  def message
    "your measurements are invalid."
  end
end
