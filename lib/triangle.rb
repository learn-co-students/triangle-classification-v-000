require "pry"
class Triangle
  attr_accessor :s1,:s2,:s3

  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    valid?
    if (s1 == s2 && s2 == s3)
      :equilateral
    elsif (s1 == s2 || s2 == s3 || s3 == s1)
      :isosceles
    else
      :scalene
    end
  end


def valid?
  valid_triangle_check = [(s1 + s2 > s3),(s2 + s3 > s1),(s3 + s1 > s2)]
    raise TriangleError if valid_triangle_check.include?(false) || s1 <= 0 || s2 <= 0 || s3 <= 0
  end

class TriangleError < StandardError
end

end
