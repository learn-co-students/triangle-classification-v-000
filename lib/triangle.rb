class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    invalid_triangle = @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0 || \
      @length_1 + @length_2 <= @length_3 || @length_2 + @length_3 <= @length_1 || \
      @length_1 + @length_3 <= @length_2

    if invalid_triangle
      raise TriangleError
    elsif @length_1 == @length_2 && @length_2 == @length_3
      :equilateral
    elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_3 == @length_1
      :isosceles
    else
      :scalene
    end
    
  end

  class TriangleError < StandardError
    def message
      "The given lengths are not a valid triangle."
    end
  end
end
