class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    validate
    if s1 == s2 && s2 == s3
      :equilateral
    elsif (s1 == s2 && s1 != s3) ||
      (s3 == s1 && s3 != s2) ||
      (s2 == s3 && s2 != s1)
      :isosceles
    elsif s1 != s2 && s2 != s3 && s3 != s1
      :scalene
    end
  end

  def validate
    real_triangle = [(s1 + s2 > s3), (s1 + s3 > s2), (s2 + s3 > s1)]
    [s1, s2, s3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
