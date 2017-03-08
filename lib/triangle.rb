class Triangle
  attr_accessor :a, :b, :c, :sides
  @sides = []

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    if [a,b,c].any?{|side| side <= 0} || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
  end

  def kind
    self.valid?
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
     :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
  end

end

class TriangleError < StandardError
end
