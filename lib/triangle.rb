class Triangle
  # triangle code
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [a,b,c].any? {|x| x <= 0}
      raise TriangleError, "Sides must have positive length"
    end

    sides = [a,b,c].sort

    unless sides[0]+sides[1] > sides[2]
      raise TriangleError, "Does not satisfy triangle inequality"
    end

    if a == b and b == c
      :equilateral
    elsif a == b or b == c or a == c
      :isosceles
    else
      :scalene
    end

  end

end

class TriangleError < StandardError
 # triangle error code
end
