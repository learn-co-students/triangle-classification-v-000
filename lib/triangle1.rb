require 'pry'
class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    s1 = s1
    s2 = s2
    s3 = s3
  end
  
  def kind
    
    if s1*s2*s3 <= 0 || s1 >= (s2+s3) || s2 >= (s1+s3) || s3 >= (s1+s2) 
    #if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || (@side1 + @side2) >= @side3 || (@side2 + @side3) >= @side1 || (@side3 + @side1) >= @side2
      
      begin
        raise TriangleError 
           puts error.message
        end
    
      
    elsif s1 == s2 && s2 == s3 
      :equilateral
      
    elsif s1 == @s2 || @s1 == @s3 || @s2 == @s3
      :isosceles
        
    else
      :scalene
    end
  end
end

    
    class TriangleError < StandardError
      def message
          "Triangle Inequaliity occurs when the sum of the lengths of any two sides does not exceed the length of the third side and each side must be larger than 0"
     end
  end

 

     
   
    
    
    
