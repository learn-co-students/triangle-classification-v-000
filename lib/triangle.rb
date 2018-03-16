require 'pry'

class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
  end

  def kind
    if tri_inequality? || equal? == false
       raise TriangleError
   elsif a == b && b == c
     :equilateral
   elsif a == b || b == c || a == c
     :isosceles
   else
     :scalene
   end
 end


   def equal?
    a + b > c && a + c > b && b + c > a
   end

   def tri_inequality?
     a <= 0 || b <= 0 || c <= 0
   end




end


class TriangleError < StandardError


end
