class Triangle 
#=================properties===================
  attr_accessor :type
#=================intialize====================
  def initialize(s1, s2, s3)
    if not_valid?(s1, s2, s3) then raise TriangleError
    else valid?(s1, s2, s3) end
  end
#=================instance=====================
  def kind
    self.type
  end
#=================helpers======================  
  def not_valid?(s1, s2, s3)
    # no size
    s1 <= 0 || s2 <= 0 || s3 <= 0 ||
    # violates inequality
    s1+s2 <= s3 || s1+s3 <= s2 || s3+s2 <= s1
  end
  
  def valid?(s1, s2, s3)
    # define type
    if s1 == s2 && s2 == s3 then self.type = :equilateral
    else s1 == s2 || s2 == s3 || s1 == s3 ? self.type = :isosceles : self.type = :scalene end
  end
#==============================================
end

############### CUSTOM ERROR ##################
class TriangleError < StandardError
end