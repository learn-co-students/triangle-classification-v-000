class Triangle
  
  attr_accessor :length_one, :length_two, :length_three
 
 
 def initialize (length_one, length_two, length_three)
   @length_one = length_one 
   @length_two = length_two 
   @length_three = length_three
end

def kind 
  if triangle_inequality? && valid_triangle?
    if @length_three != @length_two && @length_three != @length_one &&   @length_one != @length_two 
       return :scalene 
    elsif @length_two == @length_one && @length_two == @length_three 
       return :equilateral 
    else 
       return :isosceles 
    end 
   else 
     raise TriangleError 
   end 
end 

def triangle_inequality? 
  @length_three + @length_two > @length_one && @length_one + @length_two > @length_three && @length_three + @length_one > @length_two 
end 

def valid_triangle?
  @length_two.positive? && @length_one.positive? && @length_three.positive?
end 

class TriangleError < StandardError 

  end 



end 
