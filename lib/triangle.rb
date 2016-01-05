class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1=s1
    @s2=s2
    @s3=s3
    raise TriangleError if !valid?
  end

  def count_equal_sides
    equal=0
    equal+=1 if @s1==@s2
    equal+=1 if @s2==@s3
    equal+=1 if @s3==@s1
    equal
  end

  def kind
    return :invalid if !valid?
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    return :scalene if scalene?
  end

  def equilateral?
    count_equal_sides==3
  end

  def isosceles?
    count_equal_sides==1
  end

  def scalene?
    count_equal_sides==0
  end

  def valid?
    return false if @s1<=0 || @s2<=0 || @s3<=0
    return false if !(@s1<@s2+@s3) || !(@s2<@s3+@s1) || !(@s3<@s1+@s2) || !(@s3<@s1+@s2)
    true
  end



end

class TriangleError < StandardError
  # triangle error code
end
