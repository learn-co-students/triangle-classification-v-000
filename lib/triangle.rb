class Triangle

  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    validtriangle
      if @s1 == @s2 && @s1 == @s3
        return :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        return :isosceles
      else
        return :scalene
      end
  end

  def validtriangle
    trianglerules = [(@s1 + @s2 > @s3), (@s1 < @s2 + @s3), (@s1 + @s3 > @s2)]
    [@s1, @s2, @s3].each do |s|
        trianglerules << false if s <= 0
    end
    raise TriangleError if trianglerules.include?(false)
  end

  # write code here
end

class TriangleError < StandardError
end
