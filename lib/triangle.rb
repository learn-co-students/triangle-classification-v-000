class Triangle
  # write code here
 attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a + b > c && b + c > a && c + a > b
      if a == b && a == c && b == c
        :equilateral
      elsif a != b && a != c && b !=c
        :scalene
      else
        :isosceles
      end
    else
     if a <= 0 || b <= 0 || c <= 0 || a + b < c || b + c = a || c + a < b
        raise TriangleError
      end
   end
  end
end

class TriangleError < StandardError
  # def message
  #   "triangles with no size, negative sides or inequality are illegal."
  # end
end

# shape = Triangle.new(0, 0, 0)
# shape.kind
