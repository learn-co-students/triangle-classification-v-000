class Triangle

  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 >= @side2+@side3 || @side2 >= @side1+@side3 || @side3 >= @side1 + @side2 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side1 == @side2 && @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
