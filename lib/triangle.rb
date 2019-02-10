class Triangle
  
  attr_accessor :side_one, :side_two, :side_three 
   
  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three 
    
  end
  
  
  def kind 
    # Triangle rules 
    #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. 
    #This is a principle known as the triangle inequality.
    if (@side_one + @side_two) <= @side_three || (@side_two + @side_three) <= @side_one || (@side_three + @side_one) <= @side_two 
    
    
    #equilateral 
    #isosceles
    #scalene  
  end 
  
  
class TriangleError < StandardError
    # triangle error code
  end
  
  
  
  
 
end
