require 'pry'

class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif (@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || (@side_2 + @side_3) <= @side_1
      #binding.pry
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif (@side_1 == @side_2 && @side_2 != @side_3) || (@side_1 == @side_3 && @side_2 != @side_3) || (@side_2 == @side_3 && @side_1 != @side_3)
      :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "All triangle sides must be valid (all sides must be greater than zero; the sum of two sides should be greater than the third side)."
    end
  end
end
