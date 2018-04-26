class Triangle

  attr_accessor :a,:b,:c

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    legit?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def legit?
    if !((a + b > c)&&(a + c > b)&&(b + c > a)&&(a>=0)&&(b>=0)&&(c>=0))
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
