class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if !valid?
      # begin
      raise TriangleError
      # rescue TriangleError => error 
      #   puts error.message
      # end
    else 
      return :equilateral if s1 == s2 && s1 == s3
      return :isosceles if s1 == s2 || s1 == s3 || s2 == s3
      return :scalene
    end
  end

  def valid?
    return false if s1 <= 0 || s2 <= 0 || s3 <= 0 
    return false if s1 + s2 <= s3
    return false if s1 + s3 <= s2
    return false if s2 + s3 <= s1
    true 
  end

end

class TriangleError < StandardError
  def message
    "This is Triangle Error"
  end
end









