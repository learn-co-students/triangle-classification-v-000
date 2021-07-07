class Triangle
attr_accessor :side0, :side1, :side2, :equilateral, :isosceles, :scalene, :triangle_array

  def initialize(side0, side1, side2)
      @side0 = side0
      @side1 = side1
      @side2 = side2
      @triangle_array == [side0, side1, side2]
  end

  def kind
    if @side0 < 0.001 || @side1 < 0.001 || @side2 < 0.001 && (@side1 + @side2) <= @side0 || (@side0 + @side2) <= @side1 || (@side0 + @side1) <= @side2 || (@side1 + @side2) <= @side0
          raise TriangleError.new
        # rescue TriangleError => error
    # end
    #   # end
    # elsif ((@side1 + @side2) < @side0 || (@side0 + @side2) < @side1 || (@side0 + @side1) < @side2)
    #     raise TriangleError.new
      # rescue TriangleInequality => error
    end
  # end
    # end
  # end
# # end

    if @side0 == @side1 && @side1 == @side2
      return :equilateral
    elsif @side1 == @side2 || @side0 == @side2 || @side0 == @side1
      # (@triangle_array.uniq.length == @triangle_array.length).count == 1
      return :isosceles
    elsif @side0 != @side1 && @side1 != @side2 && @side0 != @side3
      return :scalene
    end
  end
end

  class TriangleError < StandardError
  end
# end
