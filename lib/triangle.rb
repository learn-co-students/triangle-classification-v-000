class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = [side1, side2, side3].sort
    raise TriangleError if @side1 <= 0 or @side1 + @side2 <= @side3
  end

  def kind
    if @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 or @side2 == @side3
      return :isosceles
    else
      return :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "thats not even a triangle"
    end
  end
end
