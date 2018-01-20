class Triangle
  # write code here 
  
  def initialize (side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
    
    
    
  end
  
  def kind 
    
    if (@side1 <=0 || @side2 <=0 || @side3 <=0 ||@side1+@side2 <= @side3 || @side2+@side3 <= @side1 || @side1+@side3 <= @side2 )
      begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      end
    end
    
    if @side1==@side2 && @side2 ==@side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  
  end
  

  
end
  
class TriangleError < StandardError
 # triangle error code
 def message 
      "This is not a valid triangle sir!"
    end
 
end
  
