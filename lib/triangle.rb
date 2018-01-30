class Triangle

  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a == "0" || b == "0" || c == "0")
      raise TriangleError
    elsif ((a + b <= c) || (a + c <= b) || (b + c <= a))
      raise TriangleError
    else
      if (a == b) & (a == c)
        :equilateral
      elsif ((a == b) && (a != c) && (b != c)) || ((b == c) && (b != a) && (c != a)) || (a == c)
        :isosceles
      else 
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end
