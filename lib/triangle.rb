require 'pry'

class Triangle
  @@type = ["equilateral", "isosceles", "scalene"]

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if ((@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2) ||
      (@side1 == 0 && @side2 == 0 and @side3 == 0)
      raise TriangleError
    end

    if @side1 == @side2 && @side2 == @side3
      @@type[0].to_sym
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      @@type[1].to_sym
    elsif @side1 != @side2 || @side2 != @side3 || @side1 != @side3
      @@type[2].to_sym
    else
      puts "oops!"
    end

  end

end

class TriangleError < StandardError
  def message
    puts "Invalid triangle!"
  end
end
