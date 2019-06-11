class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  attr_reader :sides 
  
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3].sort 
    @s1 = sides[1]
    @s2 = sides[2]
    @s3 = sides[3]
    
  end 
  
  def kind 
    if @sides.any? {|side| side <= 0 or side <= 0.0}
      raise TriangleError
    end 
    
    sum = @sides.inject {|sum, n| sum + n}
    if @sides.any? {|s| s>= sum -s}
      raise TriangleError
    end 
    
    case @sides.uniq.size 
    when 1 
      kind = :equilateral
    
    when 2 
      kind = :isosceles
      
    else 
      kind = :scalene
      
    end 
    kind 
    
  end 
  
  class TriangleError < StandardError
    
  end 
end
