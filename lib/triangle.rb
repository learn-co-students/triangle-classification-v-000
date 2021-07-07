class Triangle

  def initialize(length1, length2, length3)
    @triangle_lengths = []
    @triangle_lengths << length1
    @triangle_lengths << length2
    @triangle_lengths << length3
  end

  def triangle?
    if @triangle_lengths.sort.first > 0 &&
      @triangle_lengths [0] + @triangle_lengths [1] > @triangle_lengths [2] &&
      @triangle_lengths [0] + @triangle_lengths [2] > @triangle_lengths [1] &&
      @triangle_lengths [1] + @triangle_lengths [2] > @triangle_lengths [0]
      return true
    else false
    end
  end

  def kind
    if triangle?
      if @triangle_lengths.uniq.size == 1
        return :equilateral
      elsif @triangle_lengths.uniq.size == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
