require_relative "../lib/triangle-error.rb"

class Triangle < TriangleError

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError unless triangle_valid?

    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_valid?
    if (@a + @b > @c) && 
      (@b + @c > @a) && 
      (@a + @c > @b) &&
      @a >= 0 && @b >= 0 && @c >= 0
      return true
    else
      return false
    end
  end
end

# triangle = Triangle.new(10, 10, -10)
# puts triangle.kind