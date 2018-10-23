require 'pry'
class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || (@side1 + @side2) >= @side3 || (@side2 + @side3) >= @side1 || (@side3 + @side1) >= @side2
      
      begin
        raise TriangleError 
           puts error.message
        end
     end
      
    if @side1 == @side2 && @side2 == @side3 
      :equilateral
      
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
        
    else
      :scalene
    end
  end
    
    class TriangleError < StandardError
      def message
          "Triangle Inequaliity occurs when the sum of the lengths of any two sides does not exceed the length of the third side and each side must be larger than 0"
     end
  end
end
 

     
   
    
    
    
