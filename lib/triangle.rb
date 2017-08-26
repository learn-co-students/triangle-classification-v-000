#my crude passing method
class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [side_1, side_2, side_3]
    sorted_sides = sides.sort
    shortest = sorted_sides[0]
    mid = sorted_sides[1]
    if sides.include?(0)
      raise TriangleError
    elsif sides.any?{|i| i < 0}
      raise TriangleError
    elsif shortest + mid <= sides.max
      raise TriangleError
    end

    if sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    elsif sides.uniq.size == 3
      :scalene
    end
  end
end

class TriangleError < StandardError

end

# brilliant solution method
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    real_triangle << false if [a,b,c].include?(0)
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
