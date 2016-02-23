class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle?
    if (@a<=0 || @b<=0 || @c<=0)
      raise TriangleError
    elsif (@a+@b<=@c || @a+@c<=@b || @b+@c<=@a)
      raise TriangleError
    end
    return true
  end

  def kind
    !valid_triangle?
    if (@a==@b && @a==@c && @b==@c)
      return :equilateral
    elsif (@a==@b || @b==@c || @a==@c)
      return :isosceles
    else
      return :scalene
    end
    raise TriangleError
  end

end

class TriangleError < StandardError
end
