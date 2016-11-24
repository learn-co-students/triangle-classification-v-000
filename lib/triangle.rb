class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
  	validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
    	:isosceles
    else
    	:scalene
    end
  end
  def validate
  	triangle = true
  	size = [@a, @b, @c]
  	size.each {|x| triangle = false if x <= 0}
  	if (a + b <= c) || (a + c <= b) || (b + c <= a)
  		triangle = false
  	end
  	raise TriangleError if triangle == false
  end
end

class TriangleError < StandardError
def error1
	puts "Error 1!"
end
end
