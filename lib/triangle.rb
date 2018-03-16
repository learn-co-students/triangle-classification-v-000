class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?
    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    sides_inequiality = a + b > c && a + c > b && b + c > a
    sides_size = [a, b, c].all? { |side| side >= 0 }
    if !(sides_inequiality && sides_size)
      raise TriangleError, "Triangle is invalid"
    end
  end
end

class TriangleError < StandardError
end
