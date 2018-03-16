require 'pry'
class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
  	@length3 = length3
  	@length2 = length2
  	@length1 = length1
  end

  def kind
  	#any? less than 0
  	#length of any two sides exceeds length of third side
  	# raise TriangleError if @length1 <= 0
  	if @length1 <= 0
  		raise TriangleError
  	end
  	if (@length1 + @length2) <= @length3
  		raise TriangleError
  	elsif (@length3 + @length2) <= @length1
  		raise TriangleError
  	elsif (@length1 + @length3) <= @length2
  		raise TriangleError
  	end
  			
  	if @length1 == @length2 && @length2 == @length3
  		:equilateral
  	elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
  		:isosceles
  	else
  		:scalene
  	end  
  end	


end

class TriangleError < StandardError
  	def message
  		"this is the error"
  	end
  end	

# Triangle.new(0,0,0).kind