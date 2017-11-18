class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
      valid?
      if self.length_1 == self.length_2 && self.length_2 == self.length_3
        :equilateral
      elsif self.length_1 == self.length_2 || self.length_2 == self.length_3 || self.length_1 == self.length_3
        :isosceles
      elsif self.length_1 != self.length_2 && self.length_2 != self.length_3
        :scalene
      end
  end

  def valid?
    triangle = [(length_1 + length_2 > length_3), (length_3 + length_2 > length_1), (length_1 + length_3 > length_2)]
    [length_1, length_2, length_3].each do |s|
      if s <=0
        triangle << false
      end
      raise TriangleError if triangle.include?(false)
    end
  end
end

class TriangleError < StandardError

end
