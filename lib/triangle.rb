class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    self.sides_equal_zero
    self.triangle_inequality
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  def sides_equal_zero
    if [@a, @b, @c].any?{ |side| side <= 0 }
      begin
        raise TriangleError
      end
    end
  end

  def triangle_inequality
    scen1 = @a + @b > @c
    scen2 = @a + @c > @b
    scen3 = @b + @c > @a

    if [scen1, scen2, scen3].any?{ |scen| scen == false }
      begin
        raise TriangleError
      end
    end
  end

end


class TriangleError < StandardError
end
