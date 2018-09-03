class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.valid? == false
      raise TriangleError
    else
      if ((self.s1 == self.s2) && (self.s2 == self.s3))
        return :equilateral
      elsif ((self.s1 == self.s2) || (self.s2 == self.s3) || (self.s1 == self.s3))
        return :isosceles
      elsif ((self.s1 != self.s2) && (self.s2 != self.s3) && (self.s1 != self.s3))
        return :scalene
      end
    end
  end

  def valid?
    if ((self.s1 + self.s2 > self.s3) && (self.s2 + self.s3 > self.s1) && (self.s1 + self.s3 > self.s2) && (self.s1 > 0) && (self.s2 > 0) && (self.s3 > 0))
      return true
    else
      return false
    end
  end

  class TriangleError < StandardError
  end
end
