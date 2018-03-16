class Triangle
  # write code here

  attr_reader :first_side, :second_side, :third_side

  def initialize(first, second, third)
  	@first_side = first
  	@second_side = second
  	@third_side = third
  	@tri_checker = [first, second, third]
  end

  def kind
  	tester = @tri_checker.sort
  	max_tester = tester[0] + tester[1]
  	if tester.first <= 0 || (tester[2] >= max_tester)
  	  	raise TriangleError
  	else
  		if first_side == second_side && second_side == third_side
  			:equilateral
  		elsif first_side == second_side || second_side == third_side || first_side == third_side
  			:isosceles
  		else
  			:scalene
  		end
  	end
  end


end

class TriangleError < StandardError 
	def message
		"Better check your geometry skills, son"
	end
end
