class Triangle
  # write code here
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end
  
  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c 
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    correct = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c]. each {|side| correct << false if side <= 0}
    raise TriangleError if correct.include?(false)
  end
  
  class TriangleError < StandardError
  end
end
