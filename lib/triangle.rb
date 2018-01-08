require "pry"
class Triangle
 attr_accessor :l, :w, :h

  def initialize(l,w,h)
    @l = l
    @w = w
    @h = h
  end

  def kind
    validate_triangle
    #binding.pry
    if l == w && w == h
      :equilateral
    elsif l == w || l == h || h == w
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    #triangle_array = [(a + b > c), (a + c > b), (b + c > a)]
    #binding.pry

    #iterate over array , check if = < 0 add false and raise error if array includes false
    if l <= 0 || w <= 0 || h <= 0
         raise TriangleError
    end

    if (l + w ) <= h
      raise TriangleError
    end

    if  (l + h) <= w
      raise TriangleError
    end

    if (w + h) <= l
     raise TriangleError
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
