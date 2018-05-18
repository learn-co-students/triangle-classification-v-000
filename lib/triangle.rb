require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      raise TriangleError
    else
      if @side1 == @side2 && @side2 == @side3
        return :equilateral
      elsif @side1 == @side3 or @side2 == @side3 or @side1 == @side2
        return :isosceles
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Not a valid side"
    end
  end  
end
