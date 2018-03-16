class Triangle
  attr_accessor :len1, :len2, :len3
  attr_reader :kind
  
  def initialize(len1, len2, len3)
      @len1 = len1
      @len2 = len2
      @len3 = len3
  end

  def kind
    illegal = ((self.len1 + self.len2 <= self.len3) || (self.len2 + self.len3 <= self.len1) || (self.len1 + self.len3 <= self.len2))

    if illegal || [self.len1, self.len2, self.len3].any?{|l| l<=0}
      raise TriangleError
    elsif (self.len1 == self.len2 && self.len2 == self.len3)
      :equilateral
    elsif (self.len1 != self.len2 && self.len2 != self.len3 && self.len1 != self.len3)
      :scalene
    # elsif (self.len1 == self.len2 || self.len2 == self.len3 || self.len1 == self.len3) && !illegal
    else
      :isosceles
    end
  end
end

class TriangleError < StandardError
  def message
    puts "Invalid triangle. The sum of the lengths of any two sides must exceed the length of the third."
  end

end