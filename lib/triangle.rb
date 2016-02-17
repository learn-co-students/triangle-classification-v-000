class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
    @sides = [a, b, c].sort!
  end

  def kind
    if @sides.any? == 0 or (a + b <= c || b + c <= a || a + c <= b)
      raise TriangleError
    else
      case @sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "your triangle is invalid!"
  end
end

