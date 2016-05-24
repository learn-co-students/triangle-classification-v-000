class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 <= 0 || s2 <= 0 || s3 <= 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
      raise TriangleError 
    end
      
    if s1 == s2 && s2 == s3 
      return :equilateral
    elsif 
      s1 == s2 || s2 == s3 || s1 == s3
      return :isosceles
    else
      return :scalene
    end #if
  end

end #class

class TriangleError < StandardError
  def message
    "Triangle Error"
  end
end

