require 'pry'

class Triangle
  attr_accessor :s1, :s2, :s3, :equilateral, :isosceles, :scalene

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 == s2 && s1 == s3
      :equilateral
    elsif s1 == s2 || s1 == s3 || s2 == s3
      :isosceles
    elsif s1 != s2 && s1 != s3 && s2 != s3
      :scalene
    else
      raise TriangleError
    end
  end

  binding.pry

  class TriangleError < StandardError
  end

end
