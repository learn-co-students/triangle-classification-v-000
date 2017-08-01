class Triangle
  attr_reader :side1, :side2, :side3, :sides
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3].sort
  end

  def kind
    if @sides[0] + @sides[1] > @sides[2] && @sides.any? { |x| x > 0 }
      if @side1 == @side2 && @side2 == @side3
        return :equilateral
      elsif @side1 == @side2  || @side2 == @side3 || @side1 == @side3
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
