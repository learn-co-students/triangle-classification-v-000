class Triangle

  def initialize(side_one, side_two, side_three)
    @one = side_one
    @two = side_two
    @three = side_three
  end

  def valid
    if @one > 0 && @two > 0 && @three > 0 && (@one + @two) > @three && (@one + @three) > @two && (@two + @three) > @one
      return true
    else
      return false
    end
  end


  def kind
    if @one <= 0 || @two <= 0 || @three <= 0 || (@one + @two) <= @three || (@one + @three) <= @two || (@two + @three) <= @one

        raise TriangleError


    elsif @one == @two && @two == @three
        return :equilateral
    elsif (@one == @two && @two != @three) || (@one == @three && @three != @two) || (@two == @three && @three != @one)
        return :isosceles
    else
        return :scalene
      end
    end
  


end


class TriangleError < StandardError
  def message
    "bad triangle."
  end
end
