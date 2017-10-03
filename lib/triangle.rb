class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side3 + @side2 > @side1)
      if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        if @side1 == @side2 && @side2 == @side3
          :equilateral
        else
          :isosceles
        end
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
