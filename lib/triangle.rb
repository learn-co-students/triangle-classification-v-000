class Triangle
  attr_accessor :s1_length, :s2_length, :s3_length

  def initialize(s1_length, s2_length, s3_length)
    @s1_length = s1_length
    @s2_length = s2_length
    @s3_length = s3_length
  end

  def kind
    if ((s1_length || s2_length || s3_length) <= 0) || ((s1_length + s2_length <= s3_length) || (s2_length + s3_length <= s1_length) || (s1_length + s3_length <= s2_length))
      raise TriangleError
    elsif s1_length == s2_length && s2_length == s3_length
      :equilateral
    elsif (s1_length == s2_length && s2_length != s3_length) || (s1_length == s3_length && s2_length != s3_length) || (s2_length == s3_length && s1_length != s2_length)
      :isosceles
    elsif s1_length != s2_length && s2_length != s3_length
      :scalene
    end
  end

end

class TriangleError < StandardError
  
end
