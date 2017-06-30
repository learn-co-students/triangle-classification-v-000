class Triangle
	attr_accessor :a, :b, :c

	def initialize(a, b, c)
		@a = a
		@b = b
		@c = c
	end

	def kind
		if (a <= 0) || (b <= 0) || (c <= 0)
	    	raise TriangleError
	  	end

		sides = [a,b,c].sort

 		unless sides[0]+sides[1] > sides[2]
    		raise TriangleError
  		end
	  	
	  	case
	  	when (a == b) && (a == c) && (b == c)
	  		return :equilateral
	  	when (b == c) || (a == c) || (a == b) 
	    	return :isosceles
	  	else
	    	return :scalene
	  	end
	end
end

class TriangleError < StandardError

end