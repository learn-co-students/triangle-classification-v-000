class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !valid?
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else
      return :scalene
    end
  end

  def valid?
    if imaginary_triangle?
      return false
    elsif sides_inequal?
      return false
    else
      return true
    end
  end

  def imaginary_triangle?
    @side1 <= 0 || @side2 <= 0 || @side3 <= 0 
  end

  def sides_inequal?
    @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <=@side2
  end

end

class TriangleError < StandardError

end
