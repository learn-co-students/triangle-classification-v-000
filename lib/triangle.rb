require 'pry'
class Triangle
attr_accessor :side_one, :side_two, :side_three, :type # write code here



def initialize (one,two,three)
        @side_one = one
        @side_two = two
        @side_three = three
        kind
        
end


def kind
        #if it's valid, only then do we determine type
        if @side_one >= (@side_two + @side_three) \
        || @side_two >= (@side_one + @side_three) \
        || @side_three >= (@side_one + @side_two) \
        || @side_one < 0 \
        || @side_two < 0 \
        || @side_three < 0 #exception handling below
      
        raise TriangleError
        else
        determine_kind 
      end
      @type
end


def determine_kind
        if @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
        @type = :scalene
        elsif (@side_one == @side_two) && (@side_one == @side_three) && (@side_two == @side_three)
        @type = :equilateral
        else
        @type = :isosceles
      end
@type
end


end

class TriangleError < StandardError
end