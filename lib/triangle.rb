class Triangle

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
      #more code
    end

    def kind
      if @a == @b && @a == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

end

class TriangleError < StandardError
    def triangle(a,b,c) # raise TriangleError if @a < 0 || @b < 0 || @c < 0 || @a + @b <= @c
    sides = [a, b, c].sort
    raise TriangleError, "Invalid size #{sides[0]}" unless sides[0] > 0
    raise TriangleError, "Impossible triangle" if sides[0] + sides[1] <= sides[2]
    raise TriangleError, "Illegal triangle, sides cannot be negative" if sides[0..2] < 0
    return [:scalene, :isosceles, :equilateral][ 3 - sides.uniq.size ]
  #sum of 2 sides must exceed length of 3rd
#   #each side must be >0
    end
end
