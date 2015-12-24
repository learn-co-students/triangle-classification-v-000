class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :kind 
  
    def initialize(length1, length2, length3)
      @length1 = length1
      @length2 = length2
      @length3 = length3

    if (length1 + length2 <= length3 || length1 + length3 <= length2 || length2 + length3 <= length1 || length1 <= 0 || length2 <= 0 || length3 <= 0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
        raise error
    end 

    else 
      if length1 == length2 && length2 == length3
      self.kind = :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      self.kind = :isosceles
    else 
      self.kind = :scalene 
    end

    end 
  end #initialize end 
end #class end

class TriangleError < StandardError
  def message
    puts "The side lengths you have specified violate the triangle inequality theorem."
  end
end
