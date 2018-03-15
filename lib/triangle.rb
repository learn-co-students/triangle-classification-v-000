class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    if @a > 0 && @b > 0 && @c > 0 && (@a + @b) > @c && (@b + @c) > @a && (@a + @c) > @b
      true
    end
  end

  def kind
    if self.valid?
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
