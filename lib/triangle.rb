class Triangle
  # write code here
  attr_reader :s1, :s2, :s3
  attr_accessor :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if (@s1 * @s2 * @s3) == 0 || (@s1 + @s2) <= @s3 || (@s3 + @s2) <= @s1 || (@s1 + @s3) <= @s2
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif s1 == s2 && s1 == s3
      self.kind = :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      self.kind = :isosceles
    else
      self.kind = :scalene
    end

  end

  class TriangleError < StandardError
    # triangle error code
    def message
      puts "not a triangle"

    end
  end

end
