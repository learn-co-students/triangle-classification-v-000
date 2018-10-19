require 'pry'
class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    @side1 == @side2 && @side2 == @side3 
      :equilateral
      
    @side1 == @side2 && @side1 != @side2 && @side1 != @side3
       :isosceles
   end
 end

     
   
    
    
    
    
     
   
  
  
  
    
    
  


# def is_valid_triangle?(one,two,three)
#   sides = [one,two,three].sort
#   if (sides[0] + sides[1] <= sides[2]) || (sides[0] == 0)
#     return "invalid!"
#   else
#     which_triangle?(one,two,three)
#   end
# end
      
      
#     #Equilateral triangle have equal sides
    
  
    
    
 