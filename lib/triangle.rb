class Triangle

attr_accessor :equilateral, :isosceles, :scalene, :length1, :length2, :length3

  def initialize (length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if not_a_triangle
        begin
          raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        end
    elsif @length1 == @length2 && @length3 == @length2
      :equilateral
    elsif
      @length1 == @length2 || @length3 == @length2 || @length1 == @length3
      :isosceles
    else
      :scalene
    end
  end

  def not_a_triangle
    @length1 + @length2 <= @length3 ||
    @length3 + @length2 <= @length1 ||
    @length1 + @length3 <= @length2 ||
    @length1 <= 0 ||
    @length2 <= 0 ||
    @length3 <= 0
  end

end

class TriangleError < StandardError
  def message
    "That is not a triangle"
  end
end
