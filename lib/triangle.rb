class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if illegal?
      raise TriangleError
    elsif s1 == s2 && s2 == s3
        :equilateral
      elsif s1 == s2 || s2 == s3 || s1 == s3
        :isosceles
        else
        :scalene
      end
    end
  end

  def illegal?
    if s1 == 0 && s2 == 0 && s3 == 0
      true
    elsif s1 + s2 <= s3 || s2 + s3 <= s1 || s1 + s3 <= s2
      true
    else
      false
    end
  end

class TriangleError < StandardError

end
