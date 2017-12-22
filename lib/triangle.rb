class Triangle
  # write code here
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    end

    if (@length1 >= @length2 + @length3) || (@length2 >= @length1 + @length3) || (@length3 >= @length1 + @length2)
      raise TriangleError
    end

    if (@length1 == @length2) && (@length2 == @length3)
      return :equilateral
    end

    if (@length1 == @length3) && (@length1 != @length2) && (@length1 + @length3 > @length2)
      # raise TriangleError
      return :isosceles
    end

    if (@length2 == @length3) || (@length1 == @length3) || (@length1 == @length2)
      return :isosceles
    end

    if (@length1 != @length2) && (@length1 != @length3) && (@length2 != @length3)
      return :scalene
    end




  end


end



class TriangleError < StandardError
  puts "Error"
end
