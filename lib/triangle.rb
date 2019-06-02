require 'pry'
class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3


def initialize(length_1,length_2,length_3)
  @length_1 = length_1
  @length_2 = length_2
  @length_3 = length_3
end

def kind
  validate_triangle
  if self.length_1 == self.length_2 && self.length_2 == self.length_3
    :equilateral
  elsif self.length_1 == self.length_2 || self.length_2 == self.length_3 || self.length_1 == self.length_3
    :isosceles
  else
    :scalene
  end
end

def validate_triangle
  triangle = [(length_1 + length_2 > length_3), (length_1 + length_3 > length_2), (length_2 + length_3 > length_1)]
  [length_1,length_2,length_3].each {|x| triangle << false if x <= 0}
  raise TriangleError if triangle.include?(false)
end





end

class TriangleError < StandardError
    def message
      puts "Invalid Triangle."
  end
end
