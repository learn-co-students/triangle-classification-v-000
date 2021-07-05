class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 ||
      @s1+@s2<=@s3 || @s1+@s3<=@s2 || @s2+@s3<=@s1
      begin
        raise TriangleError
      #rescue TriangleError => error
        puts error.message
      end
    else
      if @s1==@s2 && @s1==@s3
        :equilateral
      elsif @s1 == @s2 || @s1 == @s3 || @s2==@s3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      puts "the sides must be larger than 0 and the sum of two sides is greater than the length of the third side."
    end
  end
end
