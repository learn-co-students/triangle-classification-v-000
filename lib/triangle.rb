class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3 
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  def kind 
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0) || (@side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1) 
    
        raise TriangleError
    
    elsif @side1 == @side2 && @side3 == @side2
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end 
  
end


class TriangleError < StandardError
 # triangle error code
 def invalid_Length
   "Each side must be greater than 0 in length."
 end
 
end