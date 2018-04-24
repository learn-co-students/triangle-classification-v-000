class Triangle
  attr_accessor :length1, :length2,:length3

  def initialize(length1, length2, length3)
    self.length1 = length1
    self.length2 = length2
    self.length3 = length3
  end

  def kind
    if (self.length1 + self.length2) <= self.length3
        raise TriangleError
    elsif (self.length2 + self.length3) <= self.length1
        raise TriangleError
    elsif (self.length3 + self.length1) <= self.length2
        raise TriangleError
    elsif self.length1 <= 0 || self.length2 <= 0 ||self.length3 <=0
        raise TriangleError
    elsif self.length1 == self.length2 && self.length2 == self.length3 && self.length1 == self.length3
        :equilateral
    elsif self.length1 == self.length2 || self.length2 == self.length3 || self.length1 == self.length3
        :isosceles
    else self.length1 != self.length2 && self.length2 != self.length3 && self.length1 != self.length3
        :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Triangle is invalid."
    end
  end

end
