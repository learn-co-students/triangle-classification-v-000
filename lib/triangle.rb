class Triangle
attr_reader :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    triangle?
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    if x > 0 && y > 0 && z > 0 &&  x + y > z && x + z > y && y + z > x
      true
    else
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    end
  end

end


class TriangleError < StandardError
  # def message
  #   "This is not a real triangle"
  # end
end
