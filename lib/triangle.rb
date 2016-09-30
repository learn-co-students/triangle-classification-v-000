class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.real_triangle?
      if s1 == s2 && s1 == s3
        :equilateral
      elsif s1 == s2 || s1 == s3 || s2 == s3
        :isosceles
      else
        :scalene
      end
    end
  end

  def real_triangle?
    if s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    elsif (s1 + s2 > s3) && (s1 + s3 > s2) && (s2 + s3 > s1)
      true
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError

end
