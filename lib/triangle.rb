class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0
      then
      raise TriangleError, "A side's length must be greater than or equal to zero."
    end

    if (a + b > c) && (b + c > a) && (a + c > b)
      true
    else
      raise TriangleError, "This shape does not meet the principle of triangle inequality."
    end

#Using a case is a very elegant solution I found to consolidate this code.
    case [a,b,c].uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else        :scalene
    end

#The following is my original code that performs the same task as the case above.
    # if a == b && b == c
    #   then
    #   :equilateral
    # elsif a == b || a == c || b == c
    #   then
    #   :isosceles
    # else
    #   :scalene
    # end
  end
end

  class TriangleError < StandardError
  end
