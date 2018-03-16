require "pry"

class TriangleError < StandardError
  def message
    "Not a real triangle!"
  end
end

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
  end
  def kind
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0) || (@side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1)
      raise TriangleError
      #rescue StandardError => error
      #  puts error.message
      #end
      return
    end
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    end
    return :scalene
  end
end
