require 'pry'
class Triangle
  attr_accessor :sides
  
  def initialize(s1,s2,s3)
    @sides=[]
    @sides << s1
    @sides << s2
    @sides << s3
    @sides.sort!
  end
  
  def sides
    @sides 
  end 
  
  def kind
    if (self.sides[0]==0) || (self.sides[0]+self.sides[1] <= self.sides[2])
      raise TriangleError
    elsif self.sides[0]==self.sides[1] && self.sides[1]==self.sides[2]
      :equilateral
    elsif  self.sides[0]==self.sides[1] || self.sides[1]==self.sides[2]||self.sides[0]==self.sides[2]
      :isosceles
    else 
      :scalene
    end 
  end 
  
  class TriangleError < StandardError
  end
  #binding pry
end
