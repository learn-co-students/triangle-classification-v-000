require 'pry'

class Triangle
  attr_accessor :s1, :s2, :s3, :sides

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [@s1, @s2, @s3]
    @sides_enum = []
  end

  def kind
    raise TriangleError if !triangle?
    sides_enum
    if scalene?
      :scalene
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    end
  end

  def triangle?
    @sides.all? {|s| s > 0 } && longer_hypotenuse?
  end

  def longer_hypotenuse?
    (@s1 + @s2 > @s3) && (@s3 + @s2 > @s1) && (@s1 + @s3 > @s2)
  end

  def sides_enum
    @sides.each_with_index do |s, i|
      if s == @sides[i+1] || s == @sides[i-1]
        @sides_enum << s
      elsif s == @sides[i+2] || s == @sides[i-2]
        @sides_enum << s
      end
    end
  end

  def equilateral?
    @sides_enum.count >= 3
  end

  def isosceles?
    @sides_enum.count.between?(0,2)
  end

  def scalene?
    @sides_enum.count == 0
  end

  class TriangleError < StandardError
    def message
      "You have not entered a valid triangle."
    end
  end
end
