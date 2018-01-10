class Triangle
attr_accessor :first_length, :second_length, :third_length
  def initialize(first_length, second_length, third_length)
    @first_length = first_length
    @second_length = second_length
    @third_length = third_length
  end
  
  def kind
    if proper_triangle && greater_than_zero
      if @first_length == @second_length && @second_length == @third_length
        :equilateral
        elsif @first_length == @second_length || @first_length == @third_length || @second_length == @third_length
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
end

def proper_triangle
 if @first_length + @second_length > @third_length && @first_length + @third_length > @second_length && @second_length + @third_length > @first_length
   return true 
 end
 end
 
 def greater_than_zero
  if @first_length > 0 && @second_length > 0 && @third_length > 0 
    return true 
  end
 end
end
class TriangleError < StandardError
  
end