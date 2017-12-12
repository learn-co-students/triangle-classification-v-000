class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def isosceles?
    a != b && b == c || a == c && c != b || a == b && b != c
  end

  def invalid?
    a + b <= c || a + c <= b || b + c <= a || a <= 0 || b <= 0 || c <= 0
  end

  def kind
    if invalid?
      raise TriangleError
    elsif 
      isosceles?
      :isosceles
    elsif 
      a == b && b == c
      :equilateral
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
    
end



