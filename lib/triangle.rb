class Triangle
  attr_accessor :side1, :side2, :side3
  
  
  
  def initialize(side1, side2, side3)
    @sides = []
    @side3 = side3
    @side2 = side2
    @side1 = side1
    @sides << side1
    @sides << side2
    @sides << side3
  end
  
  def kind
    if @sides.any?{|side| side <= 0} || (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side3 + @side2) <= @side1
        raise TriangleError
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
end
