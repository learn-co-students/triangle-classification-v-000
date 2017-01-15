class Triangle

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if ((@length1 || @length2 || @length3) <= 0) || (@length1 < (@length2 + @length3)) || (@length2 < (@length1 + @length3)) || (@length3 < (@length1 + @length2))
      begin
        raise TriangleError
      rescue TriangleError
      end
    else
      if (@length1 != @length2) && (@length1 != @length3) && (@length2 != @length3)
        return :scalene
      elsif (@length1 == @length2) && (@length1 == @length3) && (@length2 == @length3)
        return :equilateral
      else
        # (@length1 == @length2) || (@length1 == @length3) || (@length2 == @length3)
        return :isosceles
      end
    end
  end
end

class TriangleError < StandardError
  puts "Invalid triangle!"
end
