require 'pry'

class Triangle
    
    attr_accessor :equilateral, :isosceles, :scalene
  
    def initialize(one, two, three)
        @one = one
        @two = two
        @three = three
    end
    
    def kind
        if @one <= 0 || @two <= 0 || @three <= 0
            begin
                raise TriangleError
            end
        elsif @one == nil || @two == nil || @three == nil
            begin
                raise TriangleError
            end
        elsif @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
            begin
                raise TriangleError
            end
        elsif @one == @two && @one == @three
            :equilateral
        elsif @one == @two || @one == @three || @two == @three
            :isosceles
        else
            :scalene
        end
    end
end

class TriangleError < StandardError
    def message
        puts "Triangle Error."
    end
end