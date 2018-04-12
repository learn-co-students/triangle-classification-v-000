class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def validate_triangle
    if a <= 0 || b <= 0 || c <= 0
      return false
    elsif b >= a + c
      return false
    elsif a >= b + c
      return false
    elsif c >= a + b
      return false
    else
      return true
    end
  end

  def kind
    if validate_triangle == true
      if a == b && b == c
        return :equilateral
      elsif a == b || b == c || a == c
        return :isosceles
        else
          return :scalene
        end
      else
        begin
          raise TriangleError
        end
      end
    end


  class TriangleError < StandardError
  end
end
