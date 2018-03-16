class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def valid # check for inequaity & and each side should be larger than 0
     length_1 > 0 && length_2 > 0 && length_3 > 0 &&  (length_1 + length_2) > length_3 &&  (length_2 + length_3) > length_1 &&  (length_1 + length_3) >  length_2

  end

  def triangle_names
      # if sides are equal
      if @length_1 == @length_2 && @length_2 == @length_3 && @length_1 == @length_3
        :equilateral
      # if all three sides are unequal
      elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_2 == @length_3
        :isosceles
      # if any two sides are equal
      elsif @length_1 != @length_2 && @length_2 != @length_3 && @length_3 != @length_1 && @length_3 != @length_2
        :scalene
      end
  end

  def kind
    if valid
      triangle_names
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError # custom error class
end
