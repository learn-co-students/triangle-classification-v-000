
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def kind
    if zeros || negatives || inequality
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side2 == @side3 || @side1 == @side2 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end
  
  def zeros
    @sides.any? { |side| side == 0 }
  end
  
  def negatives
    @sides.any? { |side| side < 0 }
  end

  def inequality
    @side1 + @side2 <= @side3 ||
    @side1 + @side3 <= @side2 ||
    @side2 + @side3 <= @side1
  end
end

class TriangleError < StandardError
end
