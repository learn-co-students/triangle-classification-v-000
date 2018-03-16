class Triangle
  def initialize(one, two, three)
  	@sides = [one,two,three]
  end
  def kind
  	@sides.sort!
  	if @sides[0] <= 0 || (@sides[0] + @sides[1] <= @sides[2])
  			raise TriangleError
  	elsif @sides.uniq.count == 2
  		return :isosceles
  	elsif @sides.uniq.count == 1
  		return :equilateral
  	else
  		return :scalene
  	end
  end
end

class TriangleError < StandardError
end