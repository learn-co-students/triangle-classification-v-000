class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  class TriangleError < StandardError
    def message
      "Illegal triangle!"
    end
  end
  
  def kind
    if @side1 > 0 && @side2 > 0 && @side3 > 0 
      if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
        raise TriangleError
      else
        if @side1 == @side2 && @side1 == @side3 && @side2 == @side3
        :equilateral
        elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        :scalene
        else
        :isosceles
        end
      end
    else 
      begin
        raise TriangleError
      end
    end
  end
end
