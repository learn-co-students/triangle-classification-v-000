class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    # @all_sides = []
  end

  def valid?
    ((@a > 0 && @b > 0 && @c > 0) && (@a + @b > @c && @a + @c > @b && @b + @c > @a)) ? true : false
  end

  def kind
    if self.valid? && (@a == @b && @a == @c)
      :equilateral
    elsif self.valid? && (@a == @b || @a == @c || @b == @c)
      :isosceles
    elsif self.valid? && (@a != @b && @a != @c)
      :scalene
    elsif !(self.valid?)
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
