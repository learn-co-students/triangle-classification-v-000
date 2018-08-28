require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind #very basic breakout of formulas to check for triangle validity and type
    if (a <= 0 || b <= 0 || c <= 0) || (a + b <= c || a + c <= b || b + c <= a)
      begin
        raise TriangleError
      # rescue TriangleError => error   #in order to rescue we would include lines 17 and 18
        # error.message
      end
    elsif a == b && b ==c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle size provided."
    end
  end
end
# binding.pry
