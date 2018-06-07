require "pry"

class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2,length_3)
    @length_1 = length_1;
    @length_2 = length_2;
    @length_3 = length_3;
  end

  def kind
    a_and_b = @length_1 == @length_2
    a_and_c = @length_1 == @length_3
    b_and_c = @length_2 == @length_3

    triangle_inequality = (@length_1 + @length_2) > @length_3 &&
                          (@length_1 + @length_3) > @length_2 &&
                          (@length_2 + @length_3) > @length_1;

    check_length_invalidity = @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0;

    if (check_length_invalidity) || !triangle_inequality
      raise TriangleError
    else
      if a_and_b && b_and_c
        :equilateral
      elsif !a_and_b && !a_and_c && !b_and_c
        :scalene
      elsif (a_and_b && !a_and_c) ||
            (a_and_c && !a_and_b) ||
            (b_and_c && !a_and_b)
        :isosceles
      end
    end
  end

  class TriangleError < StandardError
    def message
      "The given lengths are now a valid triangle."
    end
  end

end
