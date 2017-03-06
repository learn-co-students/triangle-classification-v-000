require "pry"

class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3, :isosceles, :equilateral, :scalene

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  #
  # def triangle_inequality
  #   one_two = @s1 + @s2
  #   two_three = @s2 + @s3
  #   three_one = @s3 + @s1
  #   if one_two > s3
  # end

  def kind
    if @s1 == @s2 && @s2 == @s3 && @s1 > 0
      :equilateral
    elsif (@s1 == @s2 || @s2 == @s3 || @s1 == @s3) && @s1 > 0 && (@s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2)
      :isosceles
    elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3 && @s1 > 0 && @s2 > 0 && @s3 > 0 && (@s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2)
      :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "This is not a valid triangle"
  end
end
