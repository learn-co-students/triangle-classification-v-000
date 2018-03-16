class Triangle
  attr_accessor :a, :b, :c  

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if [a, b, c].uniq.length == 1
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif [a, b, c].uniq.length != 1
      :scalene
    end
  end

  def validate
    raise TriangleError if [a, b, c].any? { |s| s == 0 || s < 0 } || (a + b <= c || a + c <= b || b + c <= a)
  end 
end
 
class TriangleError < StandardError
end