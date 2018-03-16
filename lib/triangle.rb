class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #let x, y, z be sorted lengths
    x, y, z = [@a, @b, @c].sort
    raise TriangleError if [@a,@b,@c].min <= 0 || x + y <= z
    if @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
