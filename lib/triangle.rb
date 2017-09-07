require 'pry'
class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a > 0 && @side_b > 0 && @side_c > 0
      if @side_a >= @side_b + @side_c  || @side_b >= @side_a + @side_c || @side_c >= @side_a + @side_b
        raise_tri_error
      elsif @side_a == @side_b && @side_a == @side_c
        return :equilateral
      elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
        return :scalene
      else
        return :isosceles
    end
  end

    if @side_a == 0 && @side_b == 0 && @side_c == 0
      raise_tri_error
    elsif @side_a < 0 || @side_b < 0 || @side_c < 0
      raise_tri_error
end

  end
end


def raise_tri_error
  begin
    raise TriangleError
  #rescue TriangleError => error
  #  puts error.message
  end
end

class TriangleError < StandardError
 # triangle error code
 def message
   "Triangles must have sides"
 end
end
