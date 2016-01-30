class Triangle
  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def valid?
    if @x > 0 && @y > 0 && @z > 0
      if @x + @y <= @z || @x + @z <= @y || @y + @z <= @x
        return false
      else
        return true
      end
    else
      return false
    end
  end

  def kind
    if self.valid?
      if @x == @y && @y == @z
        return :equilateral
      elsif @x == @y || @x == @z || @y == @z
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

end


class TriangleError < StandardError

end