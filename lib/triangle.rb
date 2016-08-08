class Triangle
  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_triangle?
    if @side1 <= 0 or @side2 <= 0 or @side3 <= 0 or (@side1 + @side2 <= @side3) or (@side1 + @side3 <= @side2) or (@side3 + @side2 <= @side1)
      false
    else
      if @side1 == @side2 and @side1 == @side3
        @type = :equilateral
      else
        if @side1 == @side2 or @side1 == @side3 or @side2 == @side3
          @type = :isosceles
        else
          @type = :scalene
        end
      end
      true
    end
  end

  def kind
    if valid_triangle?
      @type
    else
      begin
        raise TriangleError
#      rescue TriangleError => error
        puts error.message
      end
    end
  end

end

class TriangleError < StandardError
  def message
    "invalid triangle"
  end
end
