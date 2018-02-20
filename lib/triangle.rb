class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    # illegal triangles
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      raise TriangleError
      #valid triangle
    elsif @side1==@side2 && @side1==@side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      :isosceles
    else
      :scalene
    end
    
  end
  
end

class TriangleError  < StandardError
  
end