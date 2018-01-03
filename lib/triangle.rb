class Triangle 
#=================properties===================
  attr_accessor :type, :sizes
#=================intialize====================
  def initialize(a,b,c)
    self.sizes = [a,b,c]
    if not_valid?(a,b,c) then raise TriangleError else assign(a,b,c) end
  end
#=================instance=====================
  def kind
    self.type
  end
#=================helpers======================  
  def not_valid?(a,b,c)         
    self.sizes.any?{|s| s <= 0} || self.sizes.permutation(3).any?{|a,b,c| a+b<=c}
  end
  
  def assign(a,b,c)
    if self.sizes.uniq.length==1 then self.type = :equilateral
    else self.sizes.uniq.length==2 ? self.type = :isosceles : self.type = :scalene end
  end
#==============================================
end

############### CUSTOM ERROR ##################a
class TriangleError < StandardError
end