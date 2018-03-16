class Triangle
  # write code here

  

  def initialize(s1, s2 ,s3)
  	@s1= s1
  	@s2= s2
  	@s3= s3
  end

  def kind
  	triangle=[@s1,@s2,@s3]
  	if triangle.any?{|t| t <=0} || triangle.any?{|t| (triangle.reduce :+) - t <= t} 
  		raise TriangleError
  	elsif @s1 == @s2 && @s2 == @s3
  		return :equilateral
  	elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
  		return :isosceles
  	else
  		return :scalene
  	end
  end

end

class TriangleError < StandardError
end