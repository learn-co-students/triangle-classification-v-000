class Triangle
  def initialize(a, b, c)
  @sides = []
  @sides << a
  @sides << b
  @sides << c
  end

  def valid?
    if @sides.none? {|x| x == 0} &&
      (@sides[0] + @sides[1]) > @sides[2] && 
      (@sides[1] + @sides[2]) > @sides[0] && 
      (@sides[0] + @sides[2]) > @sides[1]
      return true
    else
      return false
    end
  end

  def kind
    if valid?
      if @sides.uniq.length == 1
        return :equilateral
      elsif @sides.uniq.length == 2
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