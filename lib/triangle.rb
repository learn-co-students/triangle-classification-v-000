require 'pry'
class Triangle
  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if valid_triangle?
      if length1 == length2 && length2 == length3
        :equilateral
      elsif length1 == length2 || length3 == length2 || length1 == length3
        :isosceles
      elsif length1 != length2 && length3 != length2 && length1 != length3
        :scalene
      end
    else
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   error.message
      # end
    end
  end

  def valid_triangle?
    greater_than_zero? && triangle_inequality?
  end

  def greater_than_zero?
    lengths = [length1, length2, length3]
    lengths.all? {|l| l > 0}
  end

  def triangle_inequality?
    sum1 = length1 + length2
    sum2 = length2 + length3
    sum3 = length3 + length1

    sum1 > length3 && sum2 > length1 && sum3 > length2
  end

  class TriangleError < StandardError
    def message
      "Not a valid triangle!"
    end
  end

end
