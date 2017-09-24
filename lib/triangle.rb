class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 <= 0 || s2 <= 0 || s3 <= 0
      begin
        raise TriangleError
      end
    elsif (s1 + s2 <= s3) || (s1 + s3 <= s2) || (s2 + s3 <= s1)
      begin
        raise TriangleError
      end
    elsif s1 == s2 && s2 == s3 && s1 != 0
      return :equilateral
    elsif s1 != s2 && s2 != s3 && s1 != s3
      return :scalene
    else
      return :isosceles
    end
  end


end

class TriangleError < StandardError
  def message
    "This triangle is invalid."
  end
end
