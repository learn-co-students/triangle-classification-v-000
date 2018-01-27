class Triangle
  # write code here
  attr_accessor :a, :b, :c, :kind

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @kind = kind
  end

  def kind
    if valid_triangle
      true
  #  if !valid_triangle
    else
  #    !valid_triangle
      raise TriangleError
    end

      if a == b && b == c && a == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end


  def valid_triangle
    a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a
  end
end



class TriangleError < StandardError

  def message
    "triangle error code"
  end
end
