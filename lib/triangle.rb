class Triangle
  attr_accessor :a1, :a2, :a3

  def initialize(a1, a2, a3)
    @a1 = a1
    @a2 = a2
    @a3 = a3
  end

  def kind
    validate_triangle
    if a1 == a2 && a2 == a3
      :equilateral
    elsif a1 == a2 || a2 == a3 || a1 == a3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_triangle = [(a1 + a2 > a3), (a1 + a3 > a2), (a2 + a3 > a1)]
    [a1, a2, a3].each { |s| valid_triangle << false if s <= 0 }
    if valid_triangle.include?(false)
      raise TriangleError
    end
  end
end

  class TriangleError < StandardError
end
