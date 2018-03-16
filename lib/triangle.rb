class Triangle
  attr_accessor :sides
  attr_reader :x, :y, :z

  def initialize(x, y, z)
     @x = x
     @y = y
     @z = z
  end

  def kind
    if self.valid?
      if x == y && y == z
        :equilateral
      elsif x == y || y == z || x == z
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    [x, y, z].all? {|s| s > 0} && x + y > z && z + y > x && x + z > y
  end

end

class TriangleError < StandardError
end
