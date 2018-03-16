class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def tri_reqs
    if (a > 0 && b > 0 && c > 0) && (a + b > c && a + c > b && b + c > a)
      true
    else
      raise TriangleError
    end
  end

  def kind
    if tri_reqs == true
      if a==b && b==c
        :equilateral
      elsif  (a==b && c != b) || (b==c && c != a) || (a==c && a != b)
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
