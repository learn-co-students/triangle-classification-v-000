class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #if any side is less than 0 (negative number) or = to 0 raise error
    if a <= 0 || b <=0 || c <=0
      raise TriangleError
      #sum of the lengths of any two sides of a triangle always exceeds the length of the third side
      #if they do not exceed, raise error
    elsif ((a+b) <= c) || ((a+c) <= b) || ((b+c) <= a)
      raise TriangleError
      #other cases, return triangle type
    elsif a == b && b == c
      :equilateral
    elsif (a == b && a != c) || (a == c && c != b) || (b == c && c != a)
     :isosceles
    else a != b && b != c && a != c
      :scalene
    end
  end
end

class TriangleError < StandardError
end
