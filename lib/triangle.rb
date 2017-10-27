class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
  end

  def kind
#first makes sure array numbers are of a triangle
    valid_triangle
#know that equilateral triangles have equal sides, larger also have equal sides
    if a == b && b == c
      :equilateral
#knows that isosceles triangles have last two, first and last, or first and second sides be equal 
    elsif a == b || b == c || a == c
      :isosceles
    else
#if none of the above, is a scalene 
      :scalene
    end
  end

  def valid_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
#false if sides are less than or equal to zero
    [a,b,c].each { |side| triangle << false if side <= 0}
    raise TriangleError if triangle.include?(false)
  end
end

class TriangleError < StandardError
end
