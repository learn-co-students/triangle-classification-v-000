

class Triangle
  class TriangleError < StandardError
    def message
      "Triangle is invalid with given measurements!"
    end
  end
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def equilateral?
    return :equilateral if @side1 == @side2 && @side2 == @side3
  end

  def isosceles?
    if (@side1 == @side2 && @side2 != @side3) ||
      (@side1 == @side3 && @side3 != @side2) ||
      (@side2 == @side3 && @side3 != @side1)
      return :isosceles
    end
  end

  def scalene?
    return :scalene if @side1 != @side2 && @side2 != @side3
  end

  def valid?
    if (@side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1) || @sides.any? {|x| x <= 0}
      raise TriangleError
    end
  end

  def kind
    self.valid?
    self.equilateral? || self.isosceles? || self.scalene?
  end
end
