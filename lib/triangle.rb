class Triangle
  attr_accessor :len_1, :len_2, :len_3

  def initialize(len_1, len_2, len_3)
    self.len_1 = len_1
    self.len_2 = len_2
    self.len_3 = len_3
  end

  def kind
    len_1_2 = self.len_1 + self.len_2
    len_1_3 = self.len_1 + self.len_3
    len_2_3 = self.len_2 + self.len_3

    if self.len_1 <= 0 || self.len_2 <= 0 || self.len_3 <= 0
      raise TriangleError
    elsif len_1_2 <= self.len_3 || len_1_3 <= self.len_2 || len_2_3 <= self.len_1
      raise TriangleError
    elsif self.len_1 == self.len_2 && self.len_1 == self.len_3
      :equilateral
    elsif self.len_1 == self.len_2 || self.len_2 == self.len_3 || self.len_1 == self.len_3
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError


  end
end
