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
    triangle?
    sides_enum
    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else
      :scalene
    end
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
    # @side1 == @side2 && @side1 == @side3 && @side2 == @side3
  end

  def isosceles?
    @sides_enum.count < 3
  end

  def triangle?
    case
    when (@s1 + @s2 > @s3) || (@s3 + @s2 > @s1) || (@s1 + @s3 > @s2)
      true
    when @sides.all? {|s| s > 0}
      true
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "You have not entered a valid triangle."
    end
  end
end
