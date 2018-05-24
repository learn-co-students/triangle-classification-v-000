class Triangle

  attr_accessor :s1, :s2, :s3, :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
      begin
        raise TriangleError
        puts error.message
      end
    elsif s1 == s2 && s1 == s3
      self.kind = :equilateral #all sides are the same length
    elsif s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles # has two sides of equal length
    else
      self.kind = :scalene #all sides are unwqual length
    end
  end
end

class TriangleError < StandardError
  def message
    puts "Not a triangle."
  end
end
