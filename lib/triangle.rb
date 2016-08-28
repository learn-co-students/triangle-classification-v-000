class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1= s1
    @s2= s1
    @s3= s1
    @sides = [s1, s2, s3]
  end

  def kind
    valid?
    if @sides.count(s1) == 3
      :equilateral
    elsif @sides.count(s1) == 2 || @sides.count(s2) == 2 || @sides.count(s3) == 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    (@s1 + @s2) >= @s3 && (@s1 + @s2) >= @s3 && (@s2 + @s3) >= @s1
  end

  def positive?
    true unless @sides.any?{|n| n <= 0}
  end

  def valid?
    raise TriangleError unless triangle? ==true && positive? == true
  end
end

class TriangleError < StandardError
  def message
    puts "This is an invalid triangle!"
  end
end
