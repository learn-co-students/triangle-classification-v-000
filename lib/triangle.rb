class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    oneplustwo = @side_1 + @side_2
    oneplusthree = @side_1 + @side_3
    twoplusthree = @side_2 + @side_3
    total = @side_1 + @side_2 + @side_3
    if oneplustwo <= @side_3 || oneplusthree <= @side_2 || twoplusthree <= @side_1 || total == 0
        raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      return :equilateral
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      return :scalene
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :isosceles

    end
  end

end

class TriangleError < StandardError
  def message
    return "Not a triangle."
  end



end