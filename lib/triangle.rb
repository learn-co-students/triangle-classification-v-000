class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a= a
    @b= b
    @c = c
    end

    def kind
      if !valid_traingle?
      #  begin
          raise TriangleError
        #rescue TraingeError => error
        #  puts error.message
      #  end
      else
        if @a == @b && @b == @c
          :equilateral
        elsif @a==@b || @b==@c || @a==@c
          :isosceles
        else
          :scalene
        end
      end
    end

    def valid_traingle?
      @a > 0 && @b >0 && @c >=0 && @a+@b >@c && @b+@c > @a && @a+@c > @b
      end

    class TriangleError < StandardError
      def message
        "All lengths must be greater than 0."
      end
    end
end
