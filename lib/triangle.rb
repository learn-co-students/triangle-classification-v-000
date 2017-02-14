class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @list = [@length1, @length2, @length3]

  end

  def kind
    @list.each do |length|
      if length == 0 || length < 0
        raise TriangleError
      end
    end
    if (@length1 + @length2) <= @length3 || (@length2 + @length3) <= @length1 || (@length1 + @length3) <= @length2
      raise TriangleError
    end
    if @length1 == @length2 && @length1 == @length3
      return :equilateral
    end
    if @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      return :isosceles
    end
    if @length1 != @length2
      if @length1 != @length3
        if @length2 != @length3
          return :scalene
        end
      end
    end


  end


end

class TriangleError < StandardError
end
