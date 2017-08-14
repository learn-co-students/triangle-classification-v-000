class Triangle
  attr_accessor :a_side, :b_side, :c_side
  
  def initialize(a_side, b_side, c_side)
  	@a_side = a_side
  	@b_side = b_side
  	@c_side = c_side
  end

  def kind
  	if (@a_side + @b_side <= @c_side) || (@a_side + @c_side <= @b_side) || (@b_side + @c_side <= @a_side) || (@a_side < 0 || @b_side < 0 || @c_side <0)
  		#begin
  		raise TriangleError
  		#rescue TriangleError => error
  		#	puts error.message
  		#end
  	elsif (@a_side == @b_side) && (@b_side == @c_side)
  		:equilateral
  	elsif ((@a_side == @b_side) && (@b_side != @c_side)) || ((@a_side == @c_side) && (@b_side != @c_side)) || ((@b_side == @c_side) && (@a_side != @b_side))
  		:isosceles
  		#let's see if we can do isosceles better
  	else
  		:scalene
  	end	
  end
end

class TriangleError < StandardError
 # def message
 # 	"you must enter some valid triangle side lengths"
 # end
end