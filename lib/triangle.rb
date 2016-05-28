require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if self.err_conditions 
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end

    elsif a == b && a == c 
      #puts "equilateral"
      return :equilateral
    elsif (b == c) || (c == a) || (a == b)
      #puts "isosceles"
      return :isosceles
    else
      #puts "scalene"
      return :scalene
    end
  end

  def err_conditions
    if (a <= 0 || b <= 0 || c <= 0)
        return true
    # elsif (a == 0 || b == 0 || c == 0)
    #   return true
    # elsif ((a ** 2) + (b ** 2) != (c ** 2)) || ((a ** 2) + (c ** 2) != (b ** 2))
    #   return  true
    # elsif (a + b > c) && (a + c > b) && (c + b > a) 
    #   return true
    else
      return false
    end
  end
end

class TriangleError < StandardError
  def message
    "The sum of any two sides must be greater than the third side.  These measurements are not a Triangle.  Try again Champ!"
  end
end
















