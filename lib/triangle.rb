class Triangle
  
  attr_accessor :length_side1, :length_side2, :length_side3
  
  def initialize(length_side1, length_side2, length_side3)
    @length_side1 = length_side1
    @length_side2 = length_side2
    @length_side3 = length_side3
  end
  
  def kind
    if @length_side1 <= 0 || @length_side2 <= 0 || @length_side3 <= 0
      raise TriangleError
    elsif @length_side1 + @length_side2 <= @length_side3 || @length_side2 + @length_side3 <= @length_side1 || @length_side1 + @length_side3 <= @length_side2
      raise TriangleError
    elsif @length_side1 == @length_side2 && @length_side1 == @length_side3
      :equilateral
    elsif @length_side1 == @length_side2 && @length_side1 != @length_side3 || @length_side2 == @length_side3 && @length_side2 != @length_side1 || @length_side1 == @length_side3 && @length_side1 != @length_side2
      :isosceles
    elsif @length_side1 != @length_side2 && @length_side1 != @length_side3
      :scalene
    end
  end
  
  class TriangleError < StandardError
  
  end
end

