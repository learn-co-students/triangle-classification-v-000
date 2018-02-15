class Triangle
  attr_accessor :a, :b, :c, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @triangle =[a,b,c]
  end

  def kind
    if triangle.any?{|length| length <=0 } || (a + b) <= c || (a + c) <= b || (b + c) <= a
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
