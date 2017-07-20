class Triangle
  attr_accessor :length_one, :length_two, :length_three, :equilateral, :isosceles, :scalene

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three

  end

  def kind
    if self.length_one <= 0 || self.length_two <= 0  || self.length_three <= 0
      raise TriangleError
    elsif self.length_one + self.length_two <= self.length_three ||
      self.length_two + self.length_three <= self.length_one ||
      self.length_one + self.length_three <= self.length_two
      raise TriangleError

    elsif self.length_one == self.length_two && self.length_one == self.length_three &&
      self.length_two==self.length_three
      :equilateral
    elsif self.length_one == self.length_two && self.length_one != self.length_three ||
      self.length_one != self.length_two && self.length_two == self.length_three ||
      self.length_one == self.length_three && self.length_one != self.length_two
      :isosceles
    else self.length_one != self.length_two && self.length_one != self.length_three &&
      self.length_two != self.length_three
      :scalene
    end
  end

end

class TriangleError < StandardError

end


#--------------School's code (cleaner)---------------- 
# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
#
#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end
#
#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end
# end
#
# class TriangleError < StandardError
# end
