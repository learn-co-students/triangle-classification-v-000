require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if valid? == false
        raise TriangleError
    elsif self.a == self.b && self.a == self.c && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      :isosceles
    elsif self.a != self.b && self.a != self.c && self.b != self.c
      :scalene
    end
  end

  def triangle_inequality?
    (self.a + self.b) > self.c && (self.a + self.c) > self.b && (self.b + self.c) > self.a
  end

  def sides_greater_than_zero?
    self.a > 0 && self.b > 0 && self.c > 0
  end

  def valid?
    triangle_inequality? && sides_greater_than_zero?
  end

  class TriangleError < StandardError
    # def message
    #   puts "you've got an invalid triangle there, yo!"
    # end
  end

end

# if invalid?
#   begin
#     raise TriangleError
#   rescue TriangleError => error
#     puts error.message
#   end
