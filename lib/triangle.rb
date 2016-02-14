class Triangle

  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @sides = [side1, side2, side3]
  end

  def kind
    diff_sides = @sides.uniq.size
    if !self.is_valid?
      raise TriangleError
    elsif diff_sides <= 1
      :equilateral
    elsif diff_sides <= 2
      :isosceles
    else 
      :scalene
    end
  end

  def is_valid?
    @sides.all? {|side| side > 0} && (@s1+@s2 > @s3) && (@s1+@s3 > @s2) && (@s2+@s2 > @s1)
  end
end

class TriangleError < StandardError
end