require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #binding.pry
    if !((a+b > c && a+c > b && b+c > a) && ( a && b && c) >= 0)
      raise TriangleError
    else
      if (a == b && b == c)
         "equilateral".to_sym
      elsif ( a == b || b == c || c == a)
         "isosceles".to_sym
      else
         "scalene".to_sym
      end
    end

  end
end

class TriangleError < StandardError

end

#Triangle.new(0, 0, 0).kind

