class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    not_a_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end


  def not_a_triangle
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError if true
    elsif a + b <= c || b + c <= a || a + c <= b
      raise TriangleError if true
    end
  end

end




class TriangleError < StandardError
end
