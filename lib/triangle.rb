class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid?(@side1, @side2, @side3) != TriangleError
      if (@side1 == @side2 && @side2 == @side3)
        :equilateral
      elsif (@side1 == @side2)
        :isosceles
      elsif (@side2 == @side3)
        :isosceles
      elsif (@side1 == @side3)
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid?(side1, side2, side3)
    if (side1 || side2 || side3) <= 0
      raise TriangleError
    elsif side1 >= side2 + side3
      raise TriangleError
    elsif side2 >= side1 + side3
      raise TriangleError
    elsif side3 >= side1 + side2
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
