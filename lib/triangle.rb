class Triangle
  
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate
    valid = [(a + b > c), (a + c > b), (c + b > a)]
    [a, b, c].each{|x| valid << false if x <= 0 }
    raise TriangleError if valid.include?(false)
  end

end

class TriangleError < StandardError
end
