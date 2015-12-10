class Triangle

  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  # def no_size
  #   a <= 0 || b <= 0 || c <= 0
  # end

  # def triangle_inequality
  #   a + b <= c || a + c <= b || b + c <= a
  # end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a,b,c].each {|s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)    
  end

  def kind
    # if no_size || triangle_inequality
    #   raise TriangleError
    # else
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
    # end
  end

end

class TriangleError < StandardError
end