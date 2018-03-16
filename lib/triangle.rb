require 'pry'
class Triangle

  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1, @s2, @s3 = s1, s2, s3
  end

  def valid_triangle? # wow, test was failing due to ridiculous logic error - was using or (||) instead of and (&&)
    (self.s1 > 0 && self.s2 > 0 && self.s3 > 0) &&
    self.s1 + self.s2 > self.s3 &&
    self.s2 + self.s3 > self.s1 &&
    self.s3 + self.s1 > self.s2
  end

  def kind
    if valid_triangle?
      if self.s1 == self.s2 && self.s2 == self.s3
        :equilateral
      elsif self.s1 != self.s2 && self.s2 != self.s3 && self.s1 != self.s3
        :scalene
      else 
        :isosceles
      end
    else
      begin
        raise TriangleError
      end
    end
  end

end

class TriangleError < StandardError
  def message
    "This is not a triangle. Please make sure that your values adhere to the 'triangle inequality' principle."
  end
end

# This code is a refactor from a previous attempt.  Looks cleaner.  What I liked about the previous attempt
# is the separation of concerns (e.g. created a method called #triangle_type.  The #kind method called
# on the #valid? and #triangle_type and TriangleError methods.  Also, test did not pass initially because
# I was rescuing errors.)