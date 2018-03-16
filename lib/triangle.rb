class Triangle
  attr_reader :a, :b, :c

  def initialize(a ,b ,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle?
    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b ==c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    unless a + b > c && b + c > a && a + c > b
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
