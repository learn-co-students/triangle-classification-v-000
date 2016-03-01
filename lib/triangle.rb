class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a,b,c].sort!
  end

  def kind
    if invalid_triangle?
      raise TriangleError
    else
      case [a,b,c].uniq.size
        when 1 then :equilateral
        when 2 then :isosceles
        else        :scalene
        end
      end
    end
  end

  def invalid_triangle?
    @sides.any? == 0 or (a + b <= c || b + c <= a || a + c <= b)
  end



class TriangleError < StandardError
  def message
    "your triangle is invalid!"
  end
end


