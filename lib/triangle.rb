class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if !is_valid?
      raise TriangleError
    elsif equilateral?
      return :equilateral
    elsif isosceles?
      return :isosceles
    else
      :scalene
    end
  end

  def is_valid?
    tri_ineq = s1 + s2 > s3 && s2 + s3 > s1 && s3 + s1 > s2
    gr_zero = s1 > 0 && s2 > 0 && s3 > 0
    tri_ineq && gr_zero
  end

  def equilateral?
    s1 == s2 && s2 == s3
  end

  def isosceles?
    option_1 = s1 == s2 && s2 != s3
    option_2 = s2 == s3 && s1 != s2
    option_3 = s3 == s1 && s1 != s2
    option_1 || option_2 || option_3
  end

end

class TriangleError < StandardError
  puts "The sides don't represent a valid triangle."
end
