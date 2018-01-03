class Triangle
  attr_accessor :type
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	if (check_sides)
	  	if (@side1 == @side2 && @side1 == @side3)
	  	  @type = :equilateral
	  	elsif (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
		  @type = :isosceles
	  	else (@side1 != @side2 && @side1 != @side3 && @side2 != @side3)
		  @type = :scalene
		end
		puts "#{self.type}"
		self.type
	else
	  begin
 	    raise TriangleError
  	#rescue TriangleError => error
  	  puts error.message
  	end
  end
    
  end

  def check_sides
  	if ((@side1>0) && (@side2>0) && (@side3>0))
  		if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side3 + @side1 > @side2)
  			return true
  		end
  	else false
  	end
  end

  
end
class TriangleError < StandardError
	def message
		"bad"
	end
end

