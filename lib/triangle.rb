class Triangle

  attr_accessor :kind, :side_one, :side_two, :side_three

  def equilateral
    (@side_one == @side_two) && (@side_two == @side_three)
  end

  def isosceles
    count=0
    if (@side_one == @side_two)
      count+=1
    elsif (@side_one == @side_three)
      count+=1
    elsif (@side_two == @side_three)
      count+=1
    end
    count==1
  end

  def scalene
    (@side_one != @side_two)&&(@side_two!= @side_three)&&(@side_one!= @side_three)
  end

  def is_triangle?
    triangle = (@side_one+@side_two>@side_three)&&(@side_one+@side_three>@side_two)&&(@side_three+@side_two>@side_one)
    if !triangle
      raise TriangleError
    end
  end

  def initialize(s1,s2,s3)
    @side_one = s1
    @side_two = s2
    @side_three = s3
    self.is_triangle?
    @kind = :isosceles if self.isosceles
    @kind = :scalene if self.scalene
    @kind = :equilateral if self.equilateral
  end

end

class TriangleError < StandardError

end
