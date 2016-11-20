require 'pry'
class Triangle

  def initialize (length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
    @triangle = [@length_a,@length_b,@length_c].sort
  end

  def kind
    raise TriangleError if @triangle.first <= 0 || @triangle[2] >= @triangle[1] + @triangle[0]
    if @triangle.uniq.count == 1
      :equilateral
    elsif @triangle.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError;end

    # if @length_a + @length_b > @length_c && @length_a + @length_c > @length_b && @length_b + @length_c > @length_a && @length_a > 0 && @length_b > 0 && @length_c > 0

  # if [@length_a,@length_b,@length_c].uniq.count == 1
  #   :equilateral
  # elsif [@length_a,@length_b,@length_c].uniq.count == 2
  #   :isosceles
  # else
  #   :scalene
  # end
# else
#   raise TriangleError
# end
