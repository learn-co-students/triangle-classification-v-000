class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a,b,c]
  end

  def kind
    valid?
    if @sides.count(a) == 3
      :equilateral
    elsif @sides.count(a) == 2 || @sides.count(b) == 2 || @sides.count(c) == 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    (a + b) > c && (a + c) > b && (b + c) > a
  end

  def positive?
    true unless @sides.any?{|n| n <= 0}
  end

  def valid?
    raise TriangleError unless triangle? && positive?
  end

end

class TriangleError < StandardError
end
