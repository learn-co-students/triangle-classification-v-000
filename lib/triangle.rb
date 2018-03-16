class Triangle

  attr_accessor :a, :b, :c

  def initialize(length_a, length_b, length_c)
     self.a = length_a
     self.b = length_b
     self.c = length_c
  end

  def kind
    if a > 0 && b > 0 && c > 0
      if (a + b) <= c || (a + c) <= b || (b + c) <= a
        raise TriangleError
      elsif a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      elsif (a + b) > c || (a + c) > b || (b + c) > a
        :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  def message
    "Epic Fail"
  end
end
