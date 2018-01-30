require 'pry'
class Triangle
  # write code here
  attr_accessor  :a, :b, :c # we create this

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
        if a <= 0 || b <= 0 || c <= 0
          raise TriangleError
        end
        if  a + b <= c || b + c <= a || a + c <= b

           raise TriangleError
        end
        if a == b && b == c
              :equilateral
        elsif a == b || b == c || a == c
              :isosceles
        else
          # ! (a == b && b == c && a == c)
              :scalene
         end
        end
      end

class TriangleError < StandardError
    def message
     puts "Triangle is off duty."
    end
  end

  
