class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !self.valid?
      begin
        raise TriangleError
      end
    elsif self.isosceles?
      :isosceles
    elsif self.equilateral?
      :equilateral
    else
      :scalene
    end

  end

  def valid?
    arr = [self.a,self.b,self.c]
    (arr.max < (arr.reduce(:+) - arr.max)) && arr.all? {|side| side > 0}
  end

  def isosceles?
    (self.a == self.b || self.a == self.c || self.b == self.c) && !self.equilateral?
  end

  def equilateral?
    self.a == self.b && self.a == self.c
  end

end

class TriangleError < StandardError
end
