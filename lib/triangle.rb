class Triangle
  # write code here
  attr_accessor :sides_length

  def initialize(l1, l2, l3)
  	  @sides_length = []
  	  sides_length  << l1 
  	  sides_length << l2
  	  sides_length << l3
  	
  end

  def kind
  	  sides_length.sort! 
  	  if sides_length.all?{|e| e > 0}
  	  	if (sides_length[0] + sides_length[1]) / 2 == sides_length[2]
  	  		   :equilateral
        elsif ((sides_length[0] == sides_length[1]) || (sides_length[1] == sides_length[2])) && ((sides_length[0] + sides_length[1]) > sides_length[2])
        	   :isosceles
  	  	elsif (sides_length[0] + sides_length[1]) > (sides_length[2])
  	  		   :scalene	
  	    else
  	    	raise TriangleError
  	    end		
  	  else
  	  	raise TriangleError
  	  end
  end
end

class TriangleError < StandardError
	puts "This traingle does not much our rcord"
end


# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end
# end

# class TriangleError < StandardError
# end