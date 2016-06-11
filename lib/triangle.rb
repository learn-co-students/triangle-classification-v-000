class Triangle

  attr_accessor :s1, :s2, :s3, :sides


  def initialize(s1,s2,s3)
    @s1, @s2, @s3 = s1, s2, s3
    @sides = [] << s1 << s2 << s3 
  end

  def greater_than_zero?
    self.sides.all? { |el| el > 0 }
  end

  def two_sides_higher? 
    self.sides[0..1].inject(:+) > self.sides.last && self.sides[1..2].inject(:+) > self.sides.first && self.sides.first + self.sides.last > self.sides[1]
  end

  def kind
    if sides.count(s1) == 3 && self.greater_than_zero? && self.two_sides_higher?
      :equilateral
    elsif (s1 != s2 && s1 != s3 && s2 != s3) && self.greater_than_zero? && self.two_sides_higher?
      :scalene
    elsif (sides.count(s1) == 2 || sides.count(s2) == 2 || sides.count(s3) == 2) && self.greater_than_zero? && self.two_sides_higher?
      :isosceles
    else 
      raise TriangleError
      puts error.message
    end
  end

end


class TriangleError < StandardError
  def message
    "triangle invalid!"
  end
end