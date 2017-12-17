class Triangle
  attr_accessor :s1, :s2, :s3
  # write code here
  def initialize (s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    valid_triangle
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
      valid_tri = [(s1 < s2 + s3), (s2 < s1 + s3), (s3 < s1 + s2)]
      [s1, s2, s3].each {|s| valid_tri << false if s <= 0}
      raise TriangleError if valid_tri.include?(false)
    end
  end

  class TriangleError < StandardError


end
