class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind
  validate_triangle #pulls in other instance method
  if a == b && b == c #if all sides are equal, its equilateral
    :equilateral
  elsif a == b || b == c || a == c # if two sides are equal its isosceles
    :isosceles
  else
    :scalene  #if no sides are the same its scalene
  end #end if else
  end #end kind

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    #kind error will raise a custom error if the triangle is invalid
    raise TriangleError if real_triangle.include?(false)
end
end


class TriangleError < StandardError #triangle error is inherited from StandardError
end
