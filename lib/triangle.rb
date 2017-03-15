require "pry"
class Triangle
   attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)# write code here
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  def kind
    if length1 == length2 && length1 == length3  && length2 == length3
    #binding.pry
    :equilateral
    elsif length1 == length2 || length1 == length3 || length2 == length3
    :isosceles
    elsif length1 != length3 && length1 != length2
    :scalene
  elsif #length1 == 0 && length2 == 0 && length3 == 0
      begin
         raise TriangleError
      rescue TriangleError => error
         puts error.message
      end
  end
end
class TriangleError < StandardError
  #attr_accessor :length1, :length2, :length3
  #def initialize
  #  @length1 = length1
  #  @length2 = length2
  #  @length3 = length3
  #end
  def message
    "Not a valid triangle"
  end
end
end
