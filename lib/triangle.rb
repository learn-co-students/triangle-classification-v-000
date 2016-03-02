class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    self.is_triangle
    if a == b && b==c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def is_triangle
    if !(a + b > c)
      raise TriangleError
    elsif !(a + c > b)
      raise TriangleError
    elsif !(b + c > a)
      raise TriangleError
    else  
    end
  end

end

class TriangleError < StandardError

end
