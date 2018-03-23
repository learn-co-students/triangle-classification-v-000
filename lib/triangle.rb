class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || b + c <= a || 
    a + c <= b
      raise TriangleError
    elsif a == b && b == c && c == a
      :equilateral
       elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
end

    
  class TriangleError < StandardError
    def message 
      "Your triangle is invalid!"
    end
  end