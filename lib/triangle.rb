class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    sorted = [@a, @b, @c].sort
    if (sorted[2] >= (sorted[0] + sorted[1])) || sorted[0] <= 0
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
      #end
    end
    if (@a == @b && @b == @c) then return :equilateral end
    if (@a == @b || @b == @c || @c == @a) then return :isosceles end
    :scalene
  end
end

class TriangleError < StandardError
  def message
    "These sides do not produce a valid triangle!"
  end
end