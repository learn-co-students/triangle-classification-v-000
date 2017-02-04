class TriangleError < StandardError
  # triangle error code
end

class Triangle
  # triangle code
  attr_accessor :a, :b, :c

  def initialize (a, b, c)
      @a = a
      @b = b
      @c = c
  end

  def kind
    sides = [a,b,c]
    ineq = [a+b > c, a+c > b, b+c > a]
    if sides.min <= 0 || ineq.include?(false)
     raise TriangleError
    end

    return :equilateral if a == b && b == c              #returns, as a symbol, its type
    return :isosceles if ( a == b || b == c || a == c )  #returns, as a symbol, its type
    return :scalene                                      #returns, as a symbol, its type
    if sides.min <= 0 || ineq.include?(false)
      raise TriangleError
    end
  end
end
