require 'pry'
class Triangle
  attr_accessor :kind

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@a + @b <= @c) || (@a + @c <= @b) || (@c + @b <= @a) || @a == 0 || @b == 0 || @c == 0
      # binding.pry
      begin
        raise TriangleError
        puts error.message
      end
      # puts "not a triangle"
    else
      if (@a == @b) && (@b == @c)
        # binding.pry
          self.kind = :equilateral
      elsif (@a == @b) || (@b == @c) || (@c == @a)
        self.kind =  :isosceles
      else
        self.kind =  :scalene
      end
    end

  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
      Further, each side must be larger than 0."
    end
  end
end
