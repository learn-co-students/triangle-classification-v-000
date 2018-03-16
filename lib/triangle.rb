class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
  	@one = one
  	@two = two
  	@three = three
  end

  def valid_triangle
	if @one <= 0 || @two <= 0 || @three <= 0
		false
	elsif (@one + @two) <= @three || (@one + @three) <= @two || (@two + @three) <= @one
		false
	else
		true
	end
end

  def kind
  	if valid_triangle == false
  		raise TriangleError
  	elsif @one == @two && @two == @three  
  		:equilateral
  	elsif @one == @two || @one == @three || @two == @three 
  		:isosceles
  	elsif @one != @two && @one != @three && @two != @three 
  		:scalene		
  	end
  end

end

class TriangleError < StandardError
end
