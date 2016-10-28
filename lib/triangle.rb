class Triangle

  attr_accessor :sides

  def initialize(arg1,arg2,arg3)
      @sides=[]
      @sides.push(arg1,arg2,arg3)
      @sides=@sides.sort
  end

  def kind
      if sides.any?{|side| !(side>0)}
              raise TriangleError
      elsif !(sides[0]+sides[1]>sides[2])
              raise TriangleError
      else
          if sides.uniq.count == 1
              :equilateral
          elsif sides.uniq.count == 2
              :isosceles
          else
              :scalene
          end
      end

  end
end

class TriangleError<StandardError
    def message1
        #side length not greater than 0
        puts "One of the sides is not greater than 0"
    end

    def message2
        #Violates the Triangle inequality rule
        puts "The sides given violate the Triangle Inequality Rule"
    end
end
