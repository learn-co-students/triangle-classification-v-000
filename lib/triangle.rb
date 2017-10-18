class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    a = self.side_a
    b = self.side_b
    c = self.side_c
    if (a + b <= c || a + c <= b || b + c <= a) || (a <= 0 || b <= 0 || c <= 0)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  puts "No sides of a triangle can have a size less than or equal to 0
  and it cannot violate the triangle inequality theroem."
end
