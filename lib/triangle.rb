require "pry"
class Triangle
  # write code here
    attr_accessor :s1, :s2, :s3

    def initialize(s1, s2, s3)

      @s1 = s1
      @s2 = s2
      @s3 = s3

      if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
        raise TriangleError
      end

      if s1 <= 0 || s2 <= 0 || s3 <= 0
        raise TriangleError
      end

      if s1 == nil || s2 == nil || s3 == nil
        raise TriangleError
      end
    end

    def kind

      if @s1 == @s2 && @s1 == @s3
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        :isosceles
      else
        :scalene
      end
    end


end



class TriangleError < StandardError
  def message
    "This is an invalid triangle."
  end
end
