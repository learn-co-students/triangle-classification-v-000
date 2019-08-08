class Triangle

  def initialize(a, b, c)
    @triangle_sides = []
    @triangle_sides << a
    @triangle_sides << b
    @triangle_sides << c
    @a = a
    @b = b
    @c = c
  end

  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]

   if (@triangle_sides.none? {|side| side <= 0}) &&
      sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0]
      return true
    else
        raise TriangleError
      return false
    end
  end

    def kind
        if valid? == true && @a == @b && @b == @c
          return :equilateral
        elsif valid? && @a == @b || @b == @c || @a == @c
          return :isosceles
        elsif valid? && @a != @b && @b != @c
          return :scalene
        else
        raise TriangleError
          end
        end



class TriangleError < StandardError

end
end
