class Triangle
attr_accessor :a, :b, :c, :sides


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [@a, @b, @c]
  end

  def kind
    if !self.valid?
      raise TriangleError
    else
        if @a == @b && @a == @c
        :equilateral
        elsif @a == @b || @a == @c || @b == @c
        :isosceles
        else
        :scalene
        end
    end
  end

  def valid?
    !@sides.detect {|side| side == 0} && @a + @b > @c && @b + @c > @a && @a + @c > @b
  end


  class TriangleError < StandardError
  end

end
