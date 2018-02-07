class Triangle
	attr_accessor :sides
  # write code here
  def initialize (side1, side2, side3)
  	@sides = [side1, side2, side3].sort
  end

  def kind
  	if (@sides[0] + @sides[1] > @sides[2]) && !@sides.include?(0)
  		if @sides[0] == @sides[1] && @sides[2]== @sides[0]
  			return :equilateral
  		elsif @sides[1] == @sides[2]
  			return :isosceles
  		else
  			return :scalene
  		end
    else
    	raise TriangleError
    end
  end

end


class TriangleError < StandardError
	def message
		"this is an error"
	end
end

# a² + b² = c² 
