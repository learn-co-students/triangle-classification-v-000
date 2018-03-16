require 'pry'

class Triangle
  # write code here

  def initialize(length1, length2, length3)
  	@length1 = length1
  	@length2 = length2
  	@length3 = length3
  end

  def kind
  	if !is_valid?
  		raise TriangleError 
  	elsif is_equilateral?
  		:equilateral
  	elsif is_isosceles?
  		:isosceles
  	else
  		:scalene
  	end
  end

  def is_valid?
  	lengths_array = [@length1, @length2, @length3].sort
  	(@length1 > 0 && @length2 > 0 && @length3 > 0) && ((lengths_array[0] + lengths_array[1]) > lengths_array[2])
  end

  def is_isosceles?
  	@length1 == @length2 ||
  	@length2 == @length3 ||
  	@length1 == @length3
  end

  def is_equilateral?
  	(@length1 == @length2) && (@length2 == @length3)
  end

  def is_scalene?
  end

end

class TriangleError < StandardError
	puts "TRIANGLE ERROR"
 end