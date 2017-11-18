class Triangle
  attr_accessor :type

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
    raise (err=TriangleError.new), err.message if @type==:illigal
    @type
  end

end

class TriangleError < StandardError
  def message
      "wrong triangle"
  end
end
