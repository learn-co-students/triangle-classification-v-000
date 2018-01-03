class Triangle
  # write code here
  attr_accessor :kind

  def initialize(a, b, c)
    sides = []
    sides << a
    sides << b
    sides << c
    sorted = sides.sort

    if a <= 0 || b <= 0 || c <= 0 || (sorted[0]+sorted[1]<=sorted[2])
      raise TriangleError
    end

    if a == b && a == c
      @kind = :equilateral
    elsif (b==c && !(a==b))||(a==c && !(a==b))||(a==b && !(a==c))
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "This triangle sucks."
  end
end
