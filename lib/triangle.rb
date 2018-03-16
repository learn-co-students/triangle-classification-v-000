class Triangle

  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	side_array = [@side1, @side2, @side3].sort
    unique_arr = side_array.uniq
  	if side_array.any? { | side | side <= 0 } || (side_array[0] + side_array[1] <= side_array[2])
  		raise TriangleError
  	elsif unique_arr.length == 1
  		:equilateral
    elsif unique_arr.length == 2
      :isosceles
  	else
  		:scalene
  	end
  end

end

class TriangleError < StandardError
end
