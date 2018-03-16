class Triangle

  require 'triangle_error'

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def error
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      true
    elsif @side1 + @side2 <= @side3
      true
    elsif @side1 + @side3 <= @side2
      true
    elsif @side2 + @side3 <= @side1
      true
    else
      false
    end
  end

  def kind
    if self.error
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end

end
