#require "pry"
class Triangle
   attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)# write code here
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  #equilateral = @length1 == @length2 && @length1 == @length3  && @length2 == @length3
  #isosceles = @length1 == @length2 || @length1 == @length3 || @length2 == @length3
  #scalene = @length1 != @length3 && @length1 != @length2
  def kind
    #begin
    #  raise TriangleError
    #rescue TriangleError => error
    #  puts error.message
    #end
    if [@length1, @length2, @length3].any? do |x| x<=0 end #enum boolean method =
      #if any? of code block evaluates to True, raise an error
      raise TriangleError
    end
    sides = [@length1,@length2,@length3].sort
    #sorts numeric value in ascending order
    unless sides[0]+sides[1]>sides[2]
      #Unless is opposite of If stmt construction
      #Unless (sum of 2 sides IS GREATER (A.K.A.
      #SAME AS ALWAYS EXCEEDS) than 3rd side stmt)
      raise TriangleError
    end
    if @length1 == @length2 && @length1 == @length3  && @length2 == @length3
    #binding.pry
    :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
    :isosceles
    elsif @length1 != @length3 && @length1 != @length2
    :scalene
    #else #@length1 == 0 && @length2 == 0  && @length3 == 0
    #  begin
    #    raise TriangleError
    #  rescue TriangleError => error
    #    puts error.message
    #  end
    end #length1 == 0 && length2 == 0 && length3 == 0
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
#end
