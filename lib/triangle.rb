#require_relative "../lib/error.rb"

class Triangle
  # write code here
  attr_accessor :type
  #TriangleError=StandardError



  def initialize(a,b,c)
    puts "#{a} #{b} #{c}"
                if a*b*c==0 || a+b<=c || b+c<=a || a+c<=b || a<0 || b<0 || c<0
                  @type=:illigal
                else
                          if a==b and b==c
                            @type=:equilateral
                          else
                                   if b==c || a==c || a==b
                                      @type=:isosceles
                                   else
                                      @type=:scalene
                                   end

                          end
                end
  end

  def kind
    raise TriangleError if @type==:illigal
    @type
  end

  class TriangleError < StandardError
    def message
        puts "wrong triangle"
    end
  end

end
