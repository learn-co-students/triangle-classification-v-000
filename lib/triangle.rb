class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
  if (@side_a * @side_b * @side_c) == 0 || (@side_a + @side_b) <= @side_c || (@side_b + @side_c) <= @side_a || (@side_a + @side_c) <= @side_b 
      begin
        raise TriangleError
          puts error.message
      end
    elsif @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a < @side_b && @side_b == @side_c || @side_a > @side_b && @side_a == @side_c ||
      @side_a == @side_b && @side_b > @side_c
      :isosceles
    elsif @side_a != @side_b && @side_b != @side_c
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Each side must equal something!"
    end
  end
end
