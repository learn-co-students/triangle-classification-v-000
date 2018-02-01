class Triangle
  attr_accessor :l1, :l2, :l3
  
  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  
  def valid?
    valid_lengths? && [l1,l2,l3].all?{|l| l>0}
  end
  
  def valid_lengths?
    arr = [l1,l2,l3].sort
    (arr[0]+arr[1])>arr[2]
  end
  
  def kind
    if valid?
      if l1==l2 && l1==l3
        :equilateral
      elsif l1==l2 || l1==l3 || l2==l3
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
      end
    end
  end
  
end

class TriangleError < StandardError
  
  def message
    "Error: invalid triangle lengths"
  end
  
end