class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 

  def kind
    if !validate_triangle?
    raise TriangleError
    elsif a == b && b == c 
      :equilateral
    elsif
      a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
  end

  def validate_triangle?
    ((a + b > c ) && (b + c > a) && (a + c > b)) && ((a > 0) && (b > 0) && (c > 0))
  end


end

class TriangleError < StandardError
end