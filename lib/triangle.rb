class Triangle
  attr_accessor :left, :right, :bottom

  @@all = [] 
  
  def initialize(left, right, bottom)
    @left = left 
    @right = right 
    @bottom = bottom
    @@all << self 
  end 
  
  def kind 
    #invalid: left and right cant be > than bottom, left or right and bottom can't be > side
    #no value can be below 0
    
    sides = [left,right,bottom]
    messed_up_triangle = [left+right > bottom, left+bottom > right, right+bottom > left]

    
    if sides.min <= 0 || messed_up_triangle.include?(false)
      raise TriangleError
    end

    if left == right && right == bottom
      :equilateral
    elsif left != right && left != bottom && right != bottom
      :scalene
    elsif (left == right && right != bottom)  || (left == bottom && bottom != right)|| (right == bottom && bottom != left)
      :isosceles
    end
  end 
  
  class TriangleError < StandardError
    
  end
  
end
