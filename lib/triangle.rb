require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    # attributes.each { |k,v|
    #   self.send(("#{k}="), v)
    # }
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sideArray = [@side1, @side2, @side3]
  end

  def kind
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      begin 
        raise TriangleError
      end
    else
      myCount = 0
      @sideArray.each {|s| 
        if s == 0 || s < 0
          begin
            raise TriangleError
          end
        elsif @sideArray.count(s) > 1 
          myCount += 1 
        end 
      }
      
      if myCount == 0
        :scalene
      elsif myCount == 2
        :isosceles
      elsif myCount == 3
        :equilateral
      end
    end 
  end

end

class TriangleError < StandardError
  def message
    "message here"
  end
end