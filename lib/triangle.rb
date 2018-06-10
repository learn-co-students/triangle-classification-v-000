class Triangle
  
  attr_reader :length_1, :length_2, :length_3, :equilateral, :isosceles, :scalene
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end
  
  def false_triangl?
    if @length_1 == 0 || @length_2 == 0 || @length_3 == 0
        true
      elsif @length_1 + @length_2 <= @length_3
        true
      elsif @length_2 + @length_3 <= @length_1
        true
      elsif @length_1 + @length_3 <= @length_2
        true
      else 
        false 
    end 
  end

  def valid_triangl?
        if @length_1 == @length_2 && @length_2 == @length_3 
      :equilateral
    elsif @length_1 == @length_2 && @length_2 != @length_3 
      :isosceles
    elsif @length_1 != @length_2 && @length_2 == @length_3
      :isosceles
    elsif @length_1 == @length_3 && @length_1 != @length_2
      :isosceles
    else @length_1 != @length_2 && @length_2 != @length_3 && @length_1 != @length_3
      :scalene
    end
  end 
    
  def kind
    if false_triangl? == true 
      begin
        raise TriangleError
        puts error.message
      end
    else 
      valid_triangl?
    end
      
  end
  
  class TriangleError < StandardError
    def message
    puts "Not a valid triangle. Try again."
  end
  end
end
