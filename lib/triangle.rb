require 'pry'
class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3, :kind
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2 
    @s3 = s3
  end 
 
  def kind
    sorted = [s1,s2,s3].sort
    greatest_side = sorted[-1]
    #binding.pry
    if 
      greatest_side >= sorted[0] + sorted[1] || sorted.include?(0) 
      begin 
        raise TriangleError
          puts error.message 
          end
    elsif 
      sorted.uniq.size == 1
        self.kind = :equilateral
    elsif 
      sorted.uniq.size == 2
        self.kind = :isosceles
    else 
        self.kind = :scalene
        
    end 
  end 
end

class TriangleError < StandardError
    # triangle error code
    puts "not a triangle"
  end
