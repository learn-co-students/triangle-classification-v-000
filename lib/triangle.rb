class Triangle
  require "pry"
  attr_accessor :firstside, :secondside, :thirdside, :sidesarray
  
  class TriangleError < StandardError

  end 
  
  
  def initialize(firstside, secondside, thirdside)
    @firstside = firstside
    @secondside = secondside
    @thirdside = thirdside
    @sidesarray = [firstside.to_f, secondside.to_f, thirdside.to_f].sort
  end 
  
  def kind
    if (sidesarray[0] + sidesarray[1]) <= sidesarray[2]
      raise TriangleError
      
    elsif @sidesarray.uniq.size == 1
      :equilateral
    elsif sidesarray[1] == sidesarray[2]
      :isosceles
    else
      :scalene
    end
  end 
  
end
