class Triangle
  attr_reader :side_a, :side_b, :side_c, :sides

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c

    import
  end

  def import
    @sides = [@side_a, @side_b, @side_c]
  end

  def kind
    if invalid? || check_zero
      throw_error
    elsif @side_a == @side_b && @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      :isosceles
    else
      :scalene
    end
  end

  def check_zero
    @sides.any? { |side| side == 0 }
  end

  def invalid?
    @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a ? true : false
  end

  def throw_error
    begin
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "Those dimensions don't make a triangle. Please try again."
  end
end