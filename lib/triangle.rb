class Triangle

  def kind
    #error handling - undefined, null, or negative sides
    ((@a == nil) || (@b == nil) || (@c == nil)) ? (raise TriangleError) : nil
    ((@a <= 0) || (@b <= 0) || (@c <= 0)) ? (raise TriangleError) : nil
    #error handling - triangle inequality violation
    (((@a + @b) <= @c) || ((@a + @c) <= @b) || ((@b + @c) <= @a)) ? (raise TriangleError) : nil
    #equilateral
    ((@a == @b) && (@b == @c)) ? (return :equilateral) : nil
    #scalene
    ((@a != @b) && (@a != @c) && (@b != @c)) ? (return :scalene) : nil
    #isosceles
    (((@a == @b) &&(@a != @c)) || ((@a == @c) &&(@a != @b)) || ((@b == @c) &&(@b != @a))) ? (return :isosceles) : nil
  end

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

end

class TriangleError < StandardError
end
