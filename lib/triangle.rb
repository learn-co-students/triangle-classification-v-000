class Triangle

  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    is_triangle?
    if a == b && a ==c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end 
  end

  def is_triangle?
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
  end

end

class TriangleError < StandardError

end

