class Triangle
  # write code here
  attr_reader :line_x, :line_y, :line_z, :lines

  def initialize(line_x, line_y, line_z)
    @line_x = line_x
    @line_y = line_y
    @line_z = line_z
  end

  def kind
    raise TriangleError if !self.valid_number? || self.invalid_length?
    if @line_x == @line_y && @line_y == @line_z
      :equilateral
    elsif @line_x == @line_y || @line_y == @line_z || @line_z == @line_x
      :isosceles
    else
      :scalene
    end
  end

  def valid_number?
    @line_x > 0 && @line_y > 0 && @line_z > 0
  end

  def invalid_length?
    @line_x >= @line_y + @line_z || @line_y >= @line_x + @line_z || @line_z >= @line_x + @line_y
  end
end

class TriangleError < StandardError
end
