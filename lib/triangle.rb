class Triangle

attr_accessor :a, :b, :c

def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

def kind
  check_if_triangle
  if a == b && b == a && c == a && c == b
    :equilateral
  elsif a == b || b == c || c == a
    :isosceles
  else
    :scalene
  end
end

def check_if_triangle
  valid_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a,b,c].each { |t| valid_triangle << false if t <= 0}
  raise TriangleError if valid_triangle.include?(false)
end

class TriangleError < StandardError
  end
end
