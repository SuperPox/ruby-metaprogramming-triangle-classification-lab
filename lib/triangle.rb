require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  @@all = []

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
    @@all << a
    @@all << b
    @@all << c
  end

  def kind
    @@all.sort!
    if @@all[0] > 0 && @@all[1] > 0 && @@all[2] > 0 &&  @@all[0] + @@all[1] > @@all[2]
      if (@a==@b && @b==@c)
        :equilateral
      elsif (@a == @b || @b == @c || @a == @c) 
        :isosceles 
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    "BAKA!"
  end
end


# if @l1 == @l2 && @l2 == @l3
#   :equilateral
# elsif @l1 == @l2 || @l2 == @l3 || @l3 = @l1 && @l1 != @l2 || @l2 != @l3 || @l3 != @l1
#   :isosceles
# elsif @l1 && @l2 && @l3 > 0  
#   :scalene