class Triangle
  attr_accessor :length1, :length2, :length3, :kind



  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def valid?
    if (@length1 + @length2) <= @length3 || (@length1 + @length3) <= @length2 || (@length3 + @length2) <= @length1
      false
    elsif @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      false
    else
      true
    end
  end


  def kind
    if valid? == true
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        :isosceles
      elsif @length1 != @length2 && @length2 != @length3
        :scalene
      end
    else
      raise TriangleError
    
    end
  end
end

class TriangleError < StandardError

end