class Triangle
  # write code here
  attr_accessor :length_one, :length_two, :length_three, :kind
  def initialize(a, b, c)
    if (a + b <= c || a + c <= b || b + c <= a || a <= 0 || b <= 0 || c <= 0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
        raise error
      end
    else
      if a == b && b == c
        self.kind = :equilateral
      elsif a == b || b == c || a == c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    puts "The sum of any two sides of a triangle must exceed the value of the third side. Also, all three sides must be greater than 0."
  end
end