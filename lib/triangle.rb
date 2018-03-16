class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
  	if (@side_one && @side_two && @side_three > 0) && !triangle_inequality
  	   check_type
    else
      raise TriangleError
  	end
  end

  def triangle_inequality
    @side_one + @side_two <= @side_three ||
    @side_two + @side_three <= @side_one ||
    @side_one + @side_three <= @side_two
  end

  def check_type
  	if [@side_one,@side_two,@side_three].uniq.length == 3
  	      :scalene
  	    elsif [@side_one,@side_two,@side_three].uniq.length == 2
  	      :isosceles
  	    elsif [@side_one,@side_two,@side_three].uniq.length == 1
  	      :equilateral
  	  end
  end
end

class TriangleError < StandardError
  def message
    "Invalid side length"
  end
end
