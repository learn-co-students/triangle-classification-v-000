class Triangle
  attr_accessor :triangle_sides
  
  @triangle_sides = []
  
  def initialize(triangle_sides = [a, b, c])
    @triangle_sides = triangle_sides.sort
    #if less than 3 sides entered, then raise TriangleError
    #NOT SURE HOW TO CODE THIS
    
      # raise TriangleError
    
  end

  def kind(triangle_sides)
  
      
    if (( a == b ) && ( a == c ))
      return :equilateral
      
      elsif (( a == c ) || ( b == c ))
  	    return :isosceles
        
      else
        return :scalene
    end

  end

  # Error class used in part 2.  No need to change this code.
  class TriangleError < StandardError
    #triangle error code 
    puts "Ce n'est pas un triangle."
  end
  
end





# attr_accessor :sides

#   def initialize(side_1, side_2, side_3)
#     @sides = [side_1, side_2, side_3].sort
#     valid_triangle?
#   end

#   def valid_triangle?
#     if @sides.any? {|side| side <= 0}
#         raise TriangleError
#     elsif @sides[0] + @sides[1] <= @sides[2]
#         raise TriangleError
#     end
#   end

#   def kind
#     self.sides
#       if (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
#         :equilateral
#       elsif (@sides[0] == @sides[1]) || (@sides[1] == @sides[2])
#         :isosceles
#       else
#         :scalene
#       end
#   end