class Triangle
attr_accessor :side1, :side2, :side3


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      if @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
        if @side1 == @side2 && @side1 == @side3
        :equilateral
        elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
        elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        :scalene
        end
      else
        raise TriangleError
      end
    elsif @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
