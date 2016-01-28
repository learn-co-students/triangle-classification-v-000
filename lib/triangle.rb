class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    elsif @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    end

    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end

  end
      

end

class TriangleError < StandardError
  def message
    "Sides must be greater than 0 and the sum of the lengths of any two sides must not be less than the length of the third side."
  end
end