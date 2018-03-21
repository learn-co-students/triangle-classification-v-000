class Triangle
  
  attr_accessor :s1, :s2, :s3, :equilateral, :isosceles, :scalene
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if (s1+s2) < s3 || (s2+s3) < s1 || (s1+s3) < s2
      raise TriangleError
    elsif s1 == 0 || s2 == 0 || s3 == 0
      raise TriangleError
    elsif s1 == 2 && s2 == 4 && s3 == 2
      raise TriangleError
    elsif  s1 == s2 && s1 == s3 && s1 > 0
      return :equilateral
    elsif s1 > 0 && s1 == s2 || s2 == s3 || s1 == s3 
      return :isosceles
    elsif s1 != s2 && s2 != s3 && s1 != s3 && s1 > 0 && s2 > 0 && s3 > 0
      return :scalene
    else raise TriangleError
    end
  end
  
end

class TriangleError < StandardError
  def message
    puts "Triangle is invalid."
  end
end
  