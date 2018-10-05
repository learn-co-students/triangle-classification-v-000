class Triangle

  class TriangleError < StandardError
  end

  def initialize(side1, side2, side3)
    @triangles = []
    @triangles << side1
    @triangles << side2
    @triangles << side3
  end

  def sides
    first = @triangles[0] + @triangles[1]
    second = @triangles[0] + @triangles[2]
    third = @triangles[1] + @triangles[2]

    if @triangles.none? {|length| length <= 0} &&
      (first > @triangles[2]) &&
      (second > @triangles[1]) &&
      (third > @triangles[0])
      return true
    else
      return false
    end
  end

  def kind
    if sides
      if @triangles.uniq.length == 1
        return :equilateral
      elsif @triangles.uniq.length == 2
        return :isosceles
      else @triangles.uniq.length == 0
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end
