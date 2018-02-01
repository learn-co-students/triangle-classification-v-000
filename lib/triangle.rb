class Triangle

  attr_accessor :a, :b, :c, :isosceles

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
  raise TriangleError if a == 0 || b == 0 || c == 0
  raise TriangleError if a+b<=c or b+c<=a or a+c<=b
   if a == c and a == b
     :equilateral
   elsif
     a == b or b == c or a == c
     :isosceles
  else :scalene
  end
 end
end

class TriangleError < StandardError
end
