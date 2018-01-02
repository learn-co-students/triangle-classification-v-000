class Triangle 
#=================properties===================
  attr_accessor :type
#=================intialize====================
  def initialize(s1, s2, s3)
    if s1 <= 0 || s2 <= 0 || s3 <= 0 || s1+s2 <= s3 || s1+s3 <= s2 || s3+s2 <= s1 then  raise TriangleError
    elsif s1 == s2 && s2 == s3 then self.type = :equilateral
    else s1 == s2 || s2 == s3 || s1 == s3 ? self.type = :isosceles : self.type = :scalene end
  end
#=================instance=====================
  def kind
    self.type
  end
#==============================================
end

############### CUSTOM ERROR ##################
class TriangleError < StandardError
end