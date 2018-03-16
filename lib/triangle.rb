class Triangle
  # write code here
  attr_accessor :kind, :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def invalid?
    @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
  end

  def equilateral?
    @side1 == @side2 && @side1 == @side3
  end

  def isosceles?
    @side1 == @side2 || @side1 == @side3 || @side2 == @side3 && !equilateral?
  end

  def kind
    if invalid?
      raise TriangleError
    else
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
  end
end
