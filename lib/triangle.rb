class Triangle

  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
  end
  # write code here



def kind
  raise TriangleError if (@s1 <= 0 || @s2 <= 0 || @s3 <=0)
  raise TriangleError if (@s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 ||@s3 + @s1 <= @s2)
  return :equilateral if @s1 == @s2 && @s2 == @s3
  return :isosceles if @s1 == @s2 || @s2 == @s3 || @s1 == @s3
  return :scalene
end

end

class TriangleError < StandardError

end
