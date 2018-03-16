class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def check_triangle
    correct = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| correct << false if s <= 0 }
    raise TriangleError if correct.include?(false)
  end
end

class TriangleError < StandardError
  def message
  puts "Please make sure the initialize triangle has 3 sides. All being greather than 0 with 2 sides being greater than the last."
  end
end