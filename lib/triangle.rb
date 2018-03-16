class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if error
      raise TriangleError
    end
    if equilateral
      return :equilateral
    elsif isosceles
      return :isosceles
    elsif scalene
      return :scalene
    end
  end

  def error
    array = [@side1, @side2, @side3]
    if array.include? 0
      return true
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      return true
    end
    return false
  end

  def equilateral
    array = [@side1, @side2, @side3]
    return array.uniq.size == 1
  end

  def isosceles
    array = [@side1, @side2, @side3]
    return array.uniq.size == 2
  end

  def scalene
    array = [@side1, @side2, @side3]
    return array.uniq.size == 3
  end


end

class TriangleError < StandardError
  def message
    "No side may equal sero and the sum of no two sides can be smaller than the third "
  end
end



