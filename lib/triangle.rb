class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    #@sorted = [@side1, @side2, @side3].sort!
    if ((@side1 > 0) && (@side2 > 0) && (@side3 > 0) &&
      (@side1 + @side2 > @side3) &&
      (@side2 + @side3 > @side1) &&
      (@side1 + @side3 > @side2))
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
