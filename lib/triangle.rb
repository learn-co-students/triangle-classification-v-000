class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def arr
    arr = [@a, @b, @c]
    arr.uniq
  end

  def zero?
    self.arr.any?{|s| s <= 0}
  end

  def invalid?
    (@a + @b) <= @c || (@a + @c) <= @b || (@b + @c) <= @a
  end

  def kind
    if self.zero? || self.invalid?
        raise TriangleError
    elsif self.arr.size == 1
      :equilateral
    elsif self.arr.size == 2
      :isosceles
    elsif self.arr.size == 3
      :scalene
    end
  end
end

  class TriangleError < StandardError
  end
