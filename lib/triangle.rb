class Triangle
  attr_accessor :kind, :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def triangle_inequality_valid?
    ((@s1 + @s2) > @s3 && (@s1 + @s3) > @s2 && (@s2 + @s3) > @s1) ? true : false
  end

  def triangle_w_volumn?
    (@s1 > 0 && @s2 > 0 && @s3 > 0) ? true : false
  end

  def valid_triangle?
    (self.triangle_inequality_valid? && self.triangle_w_volumn?) ? true : false
  end

  def equilateral
    (@s1 == @s2 && @s2 == @s3) ? :equilateral : false
  end

  def isosceles
    (@s1 == @s2 || @s1 == @s3 || @s2 == @s3) ? :isosceles : false
  end

  def scalene
    (@s1 != @s2 && @s1 != @s3 && @s2 != @s3) ? :scalene : false
  end

  def kind
    raise TriangleError unless self.valid_triangle?
    self.equilateral || self.isosceles || self.scalene
  end
end

class TriangleError < StandardError
  def message
    "The triangle is not valid"
  end
end
