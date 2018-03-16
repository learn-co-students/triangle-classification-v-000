class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
  	@a = a
  	@b = b
  	@c = c
  end

  def kind
  	not_triangle?
  	if @a == @b && @b == @c
  		:equilateral
  	elsif (@a == @b) || (@a == @c) || (@b == @c)
  		:isosceles
  	else
  		:scalene
  	end
  end

  def not_triangle?
  	raise TriangleError if [a,b,c].min <=0
  	raise TriangleError if @a <= 0 && @b <= 0 && @c <= 0 
  	raise TriangleError if !(@a + @b > @c) || !(@a + @c > @b) || !(@b + @c > @a)
  end
end

class TriangleError < StandardError
end