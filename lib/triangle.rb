
require 'pry'

class Triangle

  #attr_accessor :first, :second, :third
  
  def initialize(first,second,third)
    @first = first
    @second = second
    @third = third
  end  

  def kind
    a,b,c = [@first,@second,@third].sort
    if a <= 0 || a + b <= c
    #binding.pry
    #if self.valid? == false
      begin 
      raise TriangleError
      end
    else  
      if a == b && b == c #@first == @second && @second == @third
        :equilateral #all eql sides
      elsif a == b || b ==c 
      :isosceles #2 eql sides
      else
      :scalene #no eql sides
      end 
    end   
  end

  #def valid?
   #@first + @second > @third && @first + @third > @second && @third + @second > @first && (first > 0 && second > 0 && third > 0) 
  #end
end

class TriangleError < StandardError
  def message
    "This triangle is illegal!"
  end
end