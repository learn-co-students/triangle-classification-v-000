class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def is_triangle?
    if !([a,b,c].max < [a,b,c].inject(:+)/2.0)
        raise TriangleError
    end
  end
  
  def kind
    is_triangle?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
      "That is not a triangle!"
  end

end


