#Write a Triangle class that accepts three arguments on initialization. Each argument is a length of one of the three sides of the triangle.

class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

#Give your Triangles an instance method, #kind, that returns, as a symbol, its type (:equilateral, :isosceles, :scalene)

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

# The kind method should raise a custom error, TriangleError if the triangle is invalid
# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0.

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

#Write a custom error class, TriangleError and inherit it from StandardError. This custom error class should be defined in the same file as the Triangle class, inside the Triangle class definition. 

  class TriangleError < StandardError
  end

end