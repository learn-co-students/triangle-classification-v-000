class Triangle

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    if (  @sides.any? {|side| side <= 0} ||
          @sides.inject(0) {|sum, side| sum+side} - @sides.max <= @sides.max  )
      raise TriangleError
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides.combination(2).any? {|combo| combo[0] == combo[1]}
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
