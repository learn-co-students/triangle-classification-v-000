class Triangle
  
  attr_accessor :side_one, :side_two, :side_three 
  
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one 
    @side_two = side_two 
    @side_three = side_three
  end 
  
  def kind
   if triangle_rules
     
   if @side_one == @side_two && @side_one == @side_three 
     :equilateral 
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
     :isosceles 
    elsif @side_one != @side_two && @side_two != @side_three
     :scalene 
   end 
   else 
    raise TriangleError
  end 
 end 
 

 
 def triangle_rules 
   @side_one + @side_two > @side_three && @side_one + @side_three > @side_two && @side_two + @side_three > @side_one && @side_one != 0 && @side_two != 0 && @side_three != 0 
 end 
   
 class TriangleError < StandardError
    end 

end
